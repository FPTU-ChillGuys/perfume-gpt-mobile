// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_signin_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(googleSignInServerClientId)
final googleSignInServerClientIdProvider =
    GoogleSignInServerClientIdProvider._();

final class GoogleSignInServerClientIdProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  GoogleSignInServerClientIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleSignInServerClientIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleSignInServerClientIdHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return googleSignInServerClientId(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$googleSignInServerClientIdHash() =>
    r'51462de390b07bedec2c7c6ff8fe672579af1e54';
