// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_request_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cancelRequestRepository)
final cancelRequestRepositoryProvider = CancelRequestRepositoryProvider._();

final class CancelRequestRepositoryProvider
    extends
        $FunctionalProvider<
          CancelRequestRepository,
          CancelRequestRepository,
          CancelRequestRepository
        >
    with $Provider<CancelRequestRepository> {
  CancelRequestRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cancelRequestRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cancelRequestRepositoryHash();

  @$internal
  @override
  $ProviderElement<CancelRequestRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CancelRequestRepository create(Ref ref) {
    return cancelRequestRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CancelRequestRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CancelRequestRepository>(value),
    );
  }
}

String _$cancelRequestRepositoryHash() =>
    r'556e0b7662ca7ba954b3fc9b1f0f483511b4c23f';

@ProviderFor(myCancelRequests)
final myCancelRequestsProvider = MyCancelRequestsFamily._();

final class MyCancelRequestsProvider
    extends
        $FunctionalProvider<
          AsyncValue<PaginatedCancelRequests>,
          PaginatedCancelRequests,
          FutureOr<PaginatedCancelRequests>
        >
    with
        $FutureModifier<PaginatedCancelRequests>,
        $FutureProvider<PaginatedCancelRequests> {
  MyCancelRequestsProvider._({
    required MyCancelRequestsFamily super.from,
    required ({String? status, int page, int pageSize}) super.argument,
  }) : super(
         retry: null,
         name: r'myCancelRequestsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myCancelRequestsHash();

  @override
  String toString() {
    return r'myCancelRequestsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<PaginatedCancelRequests> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PaginatedCancelRequests> create(Ref ref) {
    final argument =
        this.argument as ({String? status, int page, int pageSize});
    return myCancelRequests(
      ref,
      status: argument.status,
      page: argument.page,
      pageSize: argument.pageSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyCancelRequestsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myCancelRequestsHash() => r'a88b98ba244d354d6f5e83edaf56ce9d6fa32680';

final class MyCancelRequestsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<PaginatedCancelRequests>,
          ({String? status, int page, int pageSize})
        > {
  MyCancelRequestsFamily._()
    : super(
        retry: null,
        name: r'myCancelRequestsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyCancelRequestsProvider call({
    String? status,
    int page = 1,
    int pageSize = 10,
  }) => MyCancelRequestsProvider._(
    argument: (status: status, page: page, pageSize: pageSize),
    from: this,
  );

  @override
  String toString() => r'myCancelRequestsProvider';
}

@ProviderFor(cancelRequestDetail)
final cancelRequestDetailProvider = CancelRequestDetailFamily._();

final class CancelRequestDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<CancelRequest>,
          CancelRequest,
          FutureOr<CancelRequest>
        >
    with $FutureModifier<CancelRequest>, $FutureProvider<CancelRequest> {
  CancelRequestDetailProvider._({
    required CancelRequestDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'cancelRequestDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$cancelRequestDetailHash();

  @override
  String toString() {
    return r'cancelRequestDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<CancelRequest> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CancelRequest> create(Ref ref) {
    final argument = this.argument as String;
    return cancelRequestDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CancelRequestDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cancelRequestDetailHash() =>
    r'd8ebd83fc7e108f21fbf6799a67ca3c014e760b3';

final class CancelRequestDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<CancelRequest>, String> {
  CancelRequestDetailFamily._()
    : super(
        retry: null,
        name: r'cancelRequestDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CancelRequestDetailProvider call(String id) =>
      CancelRequestDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'cancelRequestDetailProvider';
}

@ProviderFor(cancelRequestWithOrder)
final cancelRequestWithOrderProvider = CancelRequestWithOrderFamily._();

final class CancelRequestWithOrderProvider
    extends
        $FunctionalProvider<
          AsyncValue<(CancelRequest, OrderDetail?)>,
          (CancelRequest, OrderDetail?),
          FutureOr<(CancelRequest, OrderDetail?)>
        >
    with
        $FutureModifier<(CancelRequest, OrderDetail?)>,
        $FutureProvider<(CancelRequest, OrderDetail?)> {
  CancelRequestWithOrderProvider._({
    required CancelRequestWithOrderFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'cancelRequestWithOrderProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$cancelRequestWithOrderHash();

  @override
  String toString() {
    return r'cancelRequestWithOrderProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<(CancelRequest, OrderDetail?)> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<(CancelRequest, OrderDetail?)> create(Ref ref) {
    final argument = this.argument as String;
    return cancelRequestWithOrder(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CancelRequestWithOrderProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cancelRequestWithOrderHash() =>
    r'96df7b70d5000122cd2f795dc2095211d0cdf466';

final class CancelRequestWithOrderFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<(CancelRequest, OrderDetail?)>,
          String
        > {
  CancelRequestWithOrderFamily._()
    : super(
        retry: null,
        name: r'cancelRequestWithOrderProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CancelRequestWithOrderProvider call(String id) =>
      CancelRequestWithOrderProvider._(argument: id, from: this);

  @override
  String toString() => r'cancelRequestWithOrderProvider';
}
