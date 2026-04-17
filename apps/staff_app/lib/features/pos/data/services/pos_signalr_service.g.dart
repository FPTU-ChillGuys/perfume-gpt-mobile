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

String _$posSignalRServiceHash() => r'01a0793c6bd72f0092b6168ab40ee935c82d4310';

@ProviderFor(paymentCompletedEvent)
final paymentCompletedEventProvider = PaymentCompletedEventProvider._();

final class PaymentCompletedEventProvider
    extends
        $FunctionalProvider<
          AsyncValue<PosPaymentCompletedDto>,
          PosPaymentCompletedDto,
          Stream<PosPaymentCompletedDto>
        >
    with
        $FutureModifier<PosPaymentCompletedDto>,
        $StreamProvider<PosPaymentCompletedDto> {
  PaymentCompletedEventProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentCompletedEventProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentCompletedEventHash();

  @$internal
  @override
  $StreamProviderElement<PosPaymentCompletedDto> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<PosPaymentCompletedDto> create(Ref ref) {
    return paymentCompletedEvent(ref);
  }
}

String _$paymentCompletedEventHash() =>
    r'7cc6dfdea0088a93764d30d3832750f14fc87a38';

@ProviderFor(paymentFailedEvent)
final paymentFailedEventProvider = PaymentFailedEventProvider._();

final class PaymentFailedEventProvider
    extends
        $FunctionalProvider<
          AsyncValue<PosPaymentCompletedDto>,
          PosPaymentCompletedDto,
          Stream<PosPaymentCompletedDto>
        >
    with
        $FutureModifier<PosPaymentCompletedDto>,
        $StreamProvider<PosPaymentCompletedDto> {
  PaymentFailedEventProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentFailedEventProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentFailedEventHash();

  @$internal
  @override
  $StreamProviderElement<PosPaymentCompletedDto> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<PosPaymentCompletedDto> create(Ref ref) {
    return paymentFailedEvent(ref);
  }
}

String _$paymentFailedEventHash() =>
    r'685875a3e534e0120e4c54fb36d66ec847d29500';

@ProviderFor(paymentLinkUpdatedEvent)
final paymentLinkUpdatedEventProvider = PaymentLinkUpdatedEventProvider._();

final class PaymentLinkUpdatedEventProvider
    extends
        $FunctionalProvider<
          AsyncValue<PosPaymentLinkDto>,
          PosPaymentLinkDto,
          Stream<PosPaymentLinkDto>
        >
    with
        $FutureModifier<PosPaymentLinkDto>,
        $StreamProvider<PosPaymentLinkDto> {
  PaymentLinkUpdatedEventProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentLinkUpdatedEventProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentLinkUpdatedEventHash();

  @$internal
  @override
  $StreamProviderElement<PosPaymentLinkDto> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<PosPaymentLinkDto> create(Ref ref) {
    return paymentLinkUpdatedEvent(ref);
  }
}

String _$paymentLinkUpdatedEventHash() =>
    r'251b80ba8eb0d42750f2c5ada1b167db54670429';
