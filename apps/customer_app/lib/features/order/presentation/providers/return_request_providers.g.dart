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

@ProviderFor(MyReturnRequests)
final myReturnRequestsProvider = MyReturnRequestsProvider._();

final class MyReturnRequestsProvider extends $AsyncNotifierProvider<MyReturnRequests, List<ReturnRequest>> {
  MyReturnRequestsProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'myReturnRequestsProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myReturnRequestsHash();

  @$internal
  @override
  MyReturnRequests create() => MyReturnRequests();
}

String _$myReturnRequestsHash() => r'my_return_requests_hash';

abstract class _$MyReturnRequests extends $AsyncNotifier<List<ReturnRequest>> {
  FutureOr<List<ReturnRequest>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<ReturnRequest>>, List<ReturnRequest>>;
    final element = ref.element
        as $ClassProviderElement<
          AnyNotifier<AsyncValue<List<ReturnRequest>>, List<ReturnRequest>>,
          AsyncValue<List<ReturnRequest>>, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
