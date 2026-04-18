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

String _$posSignalRServiceHash() => r'5139b205f620c284e826aaddb57a7818d27b20b9';

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

@ProviderFor(barcodeReceivedEvent)
final barcodeReceivedEventProvider = BarcodeReceivedEventProvider._();

final class BarcodeReceivedEventProvider
    extends $FunctionalProvider<AsyncValue<String>, String, Stream<String>>
    with $FutureModifier<String>, $StreamProvider<String> {
  BarcodeReceivedEventProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'barcodeReceivedEventProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$barcodeReceivedEventHash();

  @$internal
  @override
  $StreamProviderElement<String> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String> create(Ref ref) {
    return barcodeReceivedEvent(ref);
  }
}

String _$barcodeReceivedEventHash() =>
    r'41b08a0167b0086f6184ab8407709442b6be56ad';

@ProviderFor(orderDeliveredEvent)
final orderDeliveredEventProvider = OrderDeliveredEventProvider._();

final class OrderDeliveredEventProvider
    extends $FunctionalProvider<AsyncValue<String>, String, Stream<String>>
    with $FutureModifier<String>, $StreamProvider<String> {
  OrderDeliveredEventProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderDeliveredEventProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderDeliveredEventHash();

  @$internal
  @override
  $StreamProviderElement<String> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String> create(Ref ref) {
    return orderDeliveredEvent(ref);
  }
}

String _$orderDeliveredEventHash() =>
    r'9b5fe370e5b193fe073fc29d803bbf810d0d9610';

@ProviderFor(displayUpdateEvent)
final displayUpdateEventProvider = DisplayUpdateEventProvider._();

final class DisplayUpdateEventProvider
    extends
        $FunctionalProvider<
          AsyncValue<CartDisplayDto>,
          CartDisplayDto,
          Stream<CartDisplayDto>
        >
    with $FutureModifier<CartDisplayDto>, $StreamProvider<CartDisplayDto> {
  DisplayUpdateEventProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'displayUpdateEventProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$displayUpdateEventHash();

  @$internal
  @override
  $StreamProviderElement<CartDisplayDto> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<CartDisplayDto> create(Ref ref) {
    return displayUpdateEvent(ref);
  }
}

String _$displayUpdateEventHash() =>
    r'57bac753354db3c94b1c68039087695ad0902e5d';

@ProviderFor(onlineOrderReceivedEvent)
final onlineOrderReceivedEventProvider = OnlineOrderReceivedEventProvider._();

final class OnlineOrderReceivedEventProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, dynamic>>,
          Map<String, dynamic>,
          Stream<Map<String, dynamic>>
        >
    with
        $FutureModifier<Map<String, dynamic>>,
        $StreamProvider<Map<String, dynamic>> {
  OnlineOrderReceivedEventProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onlineOrderReceivedEventProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onlineOrderReceivedEventHash();

  @$internal
  @override
  $StreamProviderElement<Map<String, dynamic>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<Map<String, dynamic>> create(Ref ref) {
    return onlineOrderReceivedEvent(ref);
  }
}

String _$onlineOrderReceivedEventHash() =>
    r'd81a324168a14ef76936bda9865969cf69dd6496';
