// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_request_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(returnRequestRepository)
final returnRequestRepositoryProvider = ReturnRequestRepositoryProvider._();

final class ReturnRequestRepositoryProvider
    extends
        $FunctionalProvider<
          ReturnRequestRepository,
          ReturnRequestRepository,
          ReturnRequestRepository
        >
    with $Provider<ReturnRequestRepository> {
  ReturnRequestRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'returnRequestRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$returnRequestRepositoryHash();

  @$internal
  @override
  $ProviderElement<ReturnRequestRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ReturnRequestRepository create(Ref ref) {
    return returnRequestRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReturnRequestRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReturnRequestRepository>(value),
    );
  }
}

String _$returnRequestRepositoryHash() =>
    r'4765c39f25a3531ca66a7407c6b52d18d82f5c91';

@ProviderFor(myReturnRequests)
final myReturnRequestsProvider = MyReturnRequestsFamily._();

final class MyReturnRequestsProvider
    extends
        $FunctionalProvider<
          AsyncValue<PaginatedReturnRequests>,
          PaginatedReturnRequests,
          FutureOr<PaginatedReturnRequests>
        >
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
  String toString() {
    return r'myReturnRequestsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<PaginatedReturnRequests> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

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
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myReturnRequestsHash() => r'b55805b9a6d78c2bfcfbcac115026a617d2f01de';

final class MyReturnRequestsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<PaginatedReturnRequests>,
          ({String? status, int page, int pageSize})
        > {
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
  }) => MyReturnRequestsProvider._(
    argument: (status: status, page: page, pageSize: pageSize),
    from: this,
  );

  @override
  String toString() => r'myReturnRequestsProvider';
}

@ProviderFor(returnRequestDetail)
final returnRequestDetailProvider = ReturnRequestDetailFamily._();

final class ReturnRequestDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<ReturnRequest>,
          ReturnRequest,
          FutureOr<ReturnRequest>
        >
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
  String toString() {
    return r'returnRequestDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ReturnRequest> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

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
  int get hashCode {
    return argument.hashCode;
  }
}

String _$returnRequestDetailHash() =>
    r'0d9cd564cc8cd78a199b49df3c7cd720494c29da';

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

@ProviderFor(returnRequestWithOrder)
final returnRequestWithOrderProvider = ReturnRequestWithOrderFamily._();

final class ReturnRequestWithOrderProvider
    extends
        $FunctionalProvider<
          AsyncValue<(ReturnRequest, OrderDetail?)>,
          (ReturnRequest, OrderDetail?),
          FutureOr<(ReturnRequest, OrderDetail?)>
        >
    with
        $FutureModifier<(ReturnRequest, OrderDetail?)>,
        $FutureProvider<(ReturnRequest, OrderDetail?)> {
  ReturnRequestWithOrderProvider._({
    required ReturnRequestWithOrderFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'returnRequestWithOrderProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$returnRequestWithOrderHash();

  @override
  String toString() {
    return r'returnRequestWithOrderProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<(ReturnRequest, OrderDetail?)> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<(ReturnRequest, OrderDetail?)> create(Ref ref) {
    final argument = this.argument as String;
    return returnRequestWithOrder(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ReturnRequestWithOrderProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$returnRequestWithOrderHash() =>
    r'4e43c4d5a2aa617c79d0d67cee50a27653cfc046';

final class ReturnRequestWithOrderFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<(ReturnRequest, OrderDetail?)>,
          String
        > {
  ReturnRequestWithOrderFamily._()
    : super(
        retry: null,
        name: r'returnRequestWithOrderProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReturnRequestWithOrderProvider call(String id) =>
      ReturnRequestWithOrderProvider._(argument: id, from: this);

  @override
  String toString() => r'returnRequestWithOrderProvider';
}
