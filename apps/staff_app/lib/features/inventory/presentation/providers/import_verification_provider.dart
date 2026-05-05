import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:uuid/uuid.dart';
import 'import_verification_state.dart';
import 'import_tickets_provider.dart';

part 'import_verification_provider.g.dart';

@riverpod
class ImportVerificationNotifier extends _$ImportVerificationNotifier {
  @override
  ImportVerificationState build() => const ImportVerificationState();

  Future<void> loadTicket(String ticketId) async {
    state = state.copyWith(isLoading: true, ticketId: ticketId);
    try {
      final dio = ref.read(apiClientProvider).dio;
      final api = ImportTicketsApi(dio);
      final response = await api.apiImportticketsIdGet(id: ticketId);
      final ticket = response.data?.payload;

      if (ticket != null) {
        final products = ticket.importDetails.map((detail) {
          return ProductVerificationState(
            importDetailId: detail.id ?? '',
            variantId: detail.variantId ?? '',
            variantName: detail.variantName,
            variantSku: detail.variantSku,
            expectedQuantity: detail.expectedQuantity ?? 0,
            batches: detail.batches
                .map((b) => BatchInputState(
                      tempId: const Uuid().v4(),
                      batchCode: b.batchCode,
                      manufactureDate: b.manufactureDate,
                      expiryDate: b.expiryDate,
                      quantity: b.importQuantity ?? 0,
                    ))
                .toList(),
          );
        }).toList();

        state = state.copyWith(
          supplierName: ticket.supplierName,
          importDate: ticket.actualImportDate ?? ticket.expectedArrivalDate,
          status: ticket.status,
          products: products,
          isLoading: false,
        );
      }
    } catch (e) {
      state = state.copyWith(isLoading: false);
      // In a real app, we'd handle this more gracefully, e.g. via a messaging provider
    }
  }

  Future<void> startChecking() async {
    if (state.ticketId == null) return;
    state = state.copyWith(isLoading: true);
    try {
      final dio = ref.read(apiClientProvider).dio;
      final api = ImportTicketsApi(dio);
      await api.apiImportticketsIdStatusPut(
        id: state.ticketId!,
        updateImportStatusRequest:
            UpdateImportStatusRequest(status: ImportStatus.inProgress),
      );
      state = state.copyWith(isLoading: false, status: ImportStatus.inProgress);
      ref.invalidate(importTicketsProvider);
    } catch (e) {
      state = state.copyWith(isLoading: false);
    }
  }

  void toggleExpand(String detailId) {
    state = state.copyWith(
      products: state.products.map((p) {
        if (p.importDetailId == detailId) {
          return p.copyWith(isExpanded: !p.isExpanded);
        }
        return p;
      }).toList(),
    );
  }

  void addBatch(String detailId) {
    state = state.copyWith(
      products: state.products.map((p) {
        if (p.importDetailId == detailId) {
          final newBatch = BatchInputState(tempId: const Uuid().v4());
          return p.copyWith(
            batches: [...p.batches, newBatch],
            isExpanded: true,
          );
        }
        return p;
      }).toList(),
    );
  }

  void updateBatch(
    String detailId,
    String tempId, {
    String? batchCode,
    DateTime? manufactureDate,
    DateTime? expiryDate,
    int? quantity,
  }) {
    state = state.copyWith(
      products: state.products.map((p) {
        if (p.importDetailId == detailId) {
          return p.copyWith(
            batches: p.batches.map((b) {
              if (b.tempId == tempId) {
                var updated = b.copyWith(
                  batchCode: batchCode ?? b.batchCode,
                  manufactureDate: manufactureDate ?? b.manufactureDate,
                  expiryDate: expiryDate ?? b.expiryDate,
                  quantity: quantity ?? b.quantity,
                );

                // Auto-calculate expiry date if manufacture date changed
                if (manufactureDate != null && expiryDate == null) {
                  updated = updated.copyWith(
                    expiryDate: DateTime(
                      manufactureDate.year,
                      manufactureDate.month + 60,
                      manufactureDate.day,
                    ),
                  );
                }
                return updated;
              }
              return b;
            }).toList(),
          );
        }
        return p;
      }).toList(),
    );
  }

  void deleteBatch(String detailId, String tempId) {
    state = state.copyWith(
      products: state.products.map((p) {
        if (p.importDetailId == detailId) {
          return p.copyWith(
            batches: p.batches.where((b) => b.tempId != tempId).toList(),
          );
        }
        return p;
      }).toList(),
    );
  }

  void updateStaffNote(String note) {
    state = state.copyWith(staffNote: note);
  }

  Future<bool> confirmVerification() async {
    if (state.ticketId == null) return false;
    state = state.copyWith(isLoading: true);
    try {
      final dio = ref.read(apiClientProvider).dio;
      final api = ImportTicketsApi(dio);

      final verifyDetails = state.products.map((p) {
        final totalReceived = p.batches.fold(0, (sum, b) => sum + b.quantity);
        final rejectedQuantity =
            (p.expectedQuantity - totalReceived).clamp(0, p.expectedQuantity);

        return VerifyImportDetailRequest(
          importDetailId: p.importDetailId,
          rejectedQuantity: rejectedQuantity,
          note: state.staffNote,
          batches: p.batches
              .map((b) => CreateBatchRequest(
                    batchCode: b.batchCode,
                    manufactureDate: b.manufactureDate ?? DateTime.now(),
                    expiryDate: b.expiryDate ??
                        DateTime.now().add(const Duration(days: 365 * 5)),
                    quantity: b.quantity,
                  ))
              .toList(),
        );
      }).toList();

      await api.apiImportticketsTicketIdVerifyPost(
        ticketId: state.ticketId!,
        verifyImportTicketRequest:
            VerifyImportTicketRequest(importDetails: verifyDetails),
      );

      state = state.copyWith(isLoading: false);
      ref.invalidate(importTicketsProvider);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false);
      return false;
    }
  }

  void expandProductByVariantId(String variantId) {
    state = state.copyWith(
      products: state.products.map((p) {
        if (p.variantId == variantId) {
          return p.copyWith(isExpanded: true);
        }
        return p;
      }).toList(),
    );
  }
}
