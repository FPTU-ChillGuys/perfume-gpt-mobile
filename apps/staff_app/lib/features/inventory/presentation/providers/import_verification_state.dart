import 'package:freezed_annotation/freezed_annotation.dart';

part 'import_verification_state.freezed.dart';

@freezed
abstract class BatchInputState with _$BatchInputState {
  const factory BatchInputState({
    required String tempId,
    @Default('') String batchCode,
    DateTime? manufactureDate,
    DateTime? expiryDate,
    @Default(0) int quantity,
  }) = _BatchInputState;
}

@freezed
abstract class ProductVerificationState with _$ProductVerificationState {
  const factory ProductVerificationState({
    required String importDetailId,
    required String variantId,
    required String variantName,
    required String variantSku,
    required int expectedQuantity,
    @Default([]) List<BatchInputState> batches,
    @Default(false) bool isExpanded,
    String? note,
  }) = _ProductVerificationState;
}

@freezed
abstract class ImportVerificationState with _$ImportVerificationState {
  const factory ImportVerificationState({
    String? ticketId,
    @Default([]) List<ProductVerificationState> products,
    @Default('') String staffNote,
    @Default(false) bool isLoading,
  }) = _ImportVerificationState;
}
