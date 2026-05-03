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

String _$apiClientHash() => r'659942630ddf853917dd78aaa463beb3b16c5392';

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

String _$aiApiClientHash() => r'7548cbabb893cfbb8b90aac9900a83c797aac179';
