// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_request_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: type=lint, type=warning

// ---- staffReturnRequests (family) ----

@ProviderFor(staffReturnRequests)
final staffReturnRequestsProvider = StaffReturnRequestsFamily._();

final class StaffReturnRequestsProvider
    extends $FunctionalProvider<
        AsyncValue<PagedResultOfOrderReturnRequestResponse>,
        PagedResultOfOrderReturnRequestResponse,
        FutureOr<PagedResultOfOrderReturnRequestResponse>>
    with
        $FutureModifier<PagedResultOfOrderReturnRequestResponse>,
        $FutureProvider<PagedResultOfOrderReturnRequestResponse> {
  StaffReturnRequestsProvider._({
    required StaffReturnRequestsFamily super.from,
    required ({ReturnRequestStatus? status, int pageNumber, int pageSize}) super.argument,
  }) : super(
         retry: null,
         name: r'staffReturnRequestsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$staffReturnRequestsHash();

  @override
  String toString() => r'staffReturnRequestsProvider' '$argument';

  @$internal
  @override
  $FutureProviderElement<PagedResultOfOrderReturnRequestResponse> $createElement(
      $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PagedResultOfOrderReturnRequestResponse> create(Ref ref) {
    final argument =
        this.argument as ({ReturnRequestStatus? status, int pageNumber, int pageSize});
    return staffReturnRequests(
      ref,
      status: argument.status,
      pageNumber: argument.pageNumber,
      pageSize: argument.pageSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StaffReturnRequestsProvider && other.argument == argument;
  }

  @override
  int get hashCode => argument.hashCode;
}

String _$staffReturnRequestsHash() => r'staff_return_requests_hash';

final class StaffReturnRequestsFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<PagedResultOfOrderReturnRequestResponse>,
            ({ReturnRequestStatus? status, int pageNumber, int pageSize})> {
  StaffReturnRequestsFamily._()
    : super(
        retry: null,
        name: r'staffReturnRequestsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StaffReturnRequestsProvider call({
    ReturnRequestStatus? status,
    int pageNumber = 1,
    int pageSize = 10,
  }) =>
      StaffReturnRequestsProvider._(
        argument: (status: status, pageNumber: pageNumber, pageSize: pageSize),
        from: this,
      );

  @override
  String toString() => r'staffReturnRequestsProvider';
}

// ---- staffReturnRequestDetail (family) ----

@ProviderFor(staffReturnRequestDetail)
final staffReturnRequestDetailProvider = StaffReturnRequestDetailFamily._();

final class StaffReturnRequestDetailProvider
    extends $FunctionalProvider<
        AsyncValue<OrderReturnRequestResponse>,
        OrderReturnRequestResponse,
        FutureOr<OrderReturnRequestResponse>>
    with $FutureModifier<OrderReturnRequestResponse>, $FutureProvider<OrderReturnRequestResponse> {
  StaffReturnRequestDetailProvider._({
    required StaffReturnRequestDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'staffReturnRequestDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$staffReturnRequestDetailHash();

  @override
  String toString() => r'staffReturnRequestDetailProvider' '($argument)';

  @$internal
  @override
  $FutureProviderElement<OrderReturnRequestResponse> $createElement(
      $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<OrderReturnRequestResponse> create(Ref ref) {
    final argument = this.argument as String;
    return staffReturnRequestDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is StaffReturnRequestDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode => argument.hashCode;
}

String _$staffReturnRequestDetailHash() => r'staff_return_request_detail_hash';

final class StaffReturnRequestDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<OrderReturnRequestResponse>, String> {
  StaffReturnRequestDetailFamily._()
    : super(
        retry: null,
        name: r'staffReturnRequestDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StaffReturnRequestDetailProvider call(String id) =>
      StaffReturnRequestDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'staffReturnRequestDetailProvider';
}
