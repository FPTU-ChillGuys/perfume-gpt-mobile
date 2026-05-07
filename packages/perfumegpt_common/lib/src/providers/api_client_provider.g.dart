// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(apiClient)
final apiClientProvider = ApiClientProvider._();

final class ApiClientProvider
    extends
        $FunctionalProvider<
          PerfumegptApiClient,
          PerfumegptApiClient,
          PerfumegptApiClient
        >
    with $Provider<PerfumegptApiClient> {
  ApiClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apiClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apiClientHash();

  @$internal
  @override
  $ProviderElement<PerfumegptApiClient> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PerfumegptApiClient create(Ref ref) {
    return apiClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PerfumegptApiClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PerfumegptApiClient>(value),
    );
  }
}

String _$apiClientHash() => r'63a533747fd1bbab2808980c8ff1e715bc38b162';

@ProviderFor(aiApiClient)
final aiApiClientProvider = AiApiClientProvider._();

final class AiApiClientProvider
    extends
        $FunctionalProvider<
          PerfumegptAiApiClient,
          PerfumegptAiApiClient,
          PerfumegptAiApiClient
        >
    with $Provider<PerfumegptAiApiClient> {
  AiApiClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiApiClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiApiClientHash();

  @$internal
  @override
  $ProviderElement<PerfumegptAiApiClient> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PerfumegptAiApiClient create(Ref ref) {
    return aiApiClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PerfumegptAiApiClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PerfumegptAiApiClient>(value),
    );
  }
}

String _$aiApiClientHash() => r'7e8653f7109f663d491a91a41c28b6b5177c70d7';
