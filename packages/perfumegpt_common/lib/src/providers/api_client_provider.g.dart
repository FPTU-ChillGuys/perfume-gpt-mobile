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

String _$apiClientHash() => r'1aa1333d4588208a26f6a880a46bdaecf95b7f93';

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

String _$aiApiClientHash() => r'189bb862d9891cc37b2a3ee26a7c77ffe965e60b';
