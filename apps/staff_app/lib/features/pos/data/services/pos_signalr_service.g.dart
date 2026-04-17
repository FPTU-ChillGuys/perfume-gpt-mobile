// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_signalr_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(posSignalRService)
final posSignalRServiceProvider = PosSignalRServiceProvider._();

final class PosSignalRServiceProvider
    extends
        $FunctionalProvider<
          PosSignalRService,
          PosSignalRService,
          PosSignalRService
        >
    with $Provider<PosSignalRService> {
  PosSignalRServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'posSignalRServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$posSignalRServiceHash();

  @$internal
  @override
  $ProviderElement<PosSignalRService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PosSignalRService create(Ref ref) {
    return posSignalRService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PosSignalRService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PosSignalRService>(value),
    );
  }
}

String _$posSignalRServiceHash() => r'70cae748b05f948fbbcc1d75f9e5aee81bd4d6bf';
