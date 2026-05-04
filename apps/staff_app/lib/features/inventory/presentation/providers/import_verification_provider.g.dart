// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_verification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ImportVerificationNotifier)
final importVerificationProvider = ImportVerificationNotifierProvider._();

final class ImportVerificationNotifierProvider
    extends
        $NotifierProvider<ImportVerificationNotifier, ImportVerificationState> {
  ImportVerificationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'importVerificationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$importVerificationNotifierHash();

  @$internal
  @override
  ImportVerificationNotifier create() => ImportVerificationNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ImportVerificationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ImportVerificationState>(value),
    );
  }
}

String _$importVerificationNotifierHash() =>
    r'7f665ab4b7430aa1c52d36fbc000ac1398d9a002';

abstract class _$ImportVerificationNotifier
    extends $Notifier<ImportVerificationState> {
  ImportVerificationState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<ImportVerificationState, ImportVerificationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ImportVerificationState, ImportVerificationState>,
              ImportVerificationState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
