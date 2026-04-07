// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_request_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: type=lint, type=warning

@ProviderFor(returnRequestRepository)
final returnRequestRepositoryProvider = ReturnRequestRepositoryProvider._();

final class ReturnRequestRepositoryProvider
    extends $FunctionalProvider<ReturnRequestRepository, ReturnRequestRepository, ReturnRequestRepository>
    with $Provider<ReturnRequestRepository> {
  ReturnRequestRepositoryProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'returnRequestRepositoryProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$returnRequestRepositoryHash();

  @$internal
  @override
  $ProviderElement<ReturnRequestRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReturnRequestRepository create(Ref ref) => returnRequestRepository(ref);
}

String _$returnRequestRepositoryHash() => r'return_request_repo_hash';

// ---- myReturnRequests (family) ----

@ProviderFor(myReturnRequests)
final myReturnRequestsProvider = MyReturnRequestsFamily._();

final class MyReturnRequestsProvider
    extends $FunctionalProvider<
        AsyncValue<PaginatedReturnRequests>,
        PaginatedReturnRequests,
        FutureOr<PaginatedReturnRequests>>
    with
        $FutureModifier<PaginatedReturnRequests>,
        $FutureProvider<PaginatedReturnRequests> {
  MyReturnRequestsProvider._({
    required MyReturnRequestsFamily super.from,
    required ({String? status, int page, int pageSize}) super.argument,
  }) : super(
         retry: null,
         name: r'myReturnRequestsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myReturnRequestsHash();

  @override
  String toString() => r'myReturnRequestsProvider' '$argument';

  @$internal
  @override
  $FutureProviderElement<PaginatedReturnRequests> $createElement(
      $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PaginatedReturnRequests> create(Ref ref) {
    final argument =
        this.argument as ({String? status, int page, int pageSize});
    return myReturnRequests(
      ref,
      status: argument.status,
      page: argument.page,
      pageSize: argument.pageSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyReturnRequestsProvider && other.argument == argument;
  }

  @override
  int get hashCode => argument.hashCode;
}

String _$myReturnRequestsHash() => r'my_return_requests_hash';

final class MyReturnRequestsFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<PaginatedReturnRequests>,
            ({String? status, int page, int pageSize})> {
  MyReturnRequestsFamily._()
    : super(
        retry: null,
        name: r'myReturnRequestsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyReturnRequestsProvider call({
    String? status,
    int page = 1,
    int pageSize = 10,
  }) =>
      MyReturnRequestsProvider._(
        argument: (status: status, page: page, pageSize: pageSize),
        from: this,
      );

  @override
  String toString() => r'myReturnRequestsProvider';
}

// ---- returnRequestDetail (family) ----

@ProviderFor(returnRequestDetail)
final returnRequestDetailProvider = ReturnRequestDetailFamily._();

final class ReturnRequestDetailProvider
    extends $FunctionalProvider<
        AsyncValue<ReturnRequest>,
        ReturnRequest,
        FutureOr<ReturnRequest>>
    with $FutureModifier<ReturnRequest>, $FutureProvider<ReturnRequest> {
  ReturnRequestDetailProvider._({
    required ReturnRequestDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'returnRequestDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$returnRequestDetailHash();

  @override
  String toString() => r'returnRequestDetailProvider' '($argument)';

  @$internal
  @override
  $FutureProviderElement<ReturnRequest> $createElement(
      $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ReturnRequest> create(Ref ref) {
    final argument = this.argument as String;
    return returnRequestDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ReturnRequestDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode => argument.hashCode;
}

String _$returnRequestDetailHash() => r'return_request_detail_hash';

final class ReturnRequestDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ReturnRequest>, String> {
  ReturnRequestDetailFamily._()
    : super(
        retry: null,
        name: r'returnRequestDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReturnRequestDetailProvider call(String id) =>
      ReturnRequestDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'returnRequestDetailProvider';
}
