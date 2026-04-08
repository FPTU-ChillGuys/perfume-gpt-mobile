// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orderRepository)
final orderRepositoryProvider = OrderRepositoryProvider._();

final class OrderRepositoryProvider
    extends
        $FunctionalProvider<OrderRepository, OrderRepository, OrderRepository>
    with $Provider<OrderRepository> {
  OrderRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderRepositoryHash();

  @$internal
  @override
  $ProviderElement<OrderRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OrderRepository create(Ref ref) {
    return orderRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderRepository>(value),
    );
  }
}

String _$orderRepositoryHash() => r'3ebca83bacfd2247090dcd50eb37952a437ac21e';

@ProviderFor(myOrders)
final myOrdersProvider = MyOrdersFamily._();

final class MyOrdersProvider
    extends
        $FunctionalProvider<
          AsyncValue<PaginatedOrders>,
          PaginatedOrders,
          FutureOr<PaginatedOrders>
        >
    with $FutureModifier<PaginatedOrders>, $FutureProvider<PaginatedOrders> {
  MyOrdersProvider._({
    required MyOrdersFamily super.from,
    required ({String? status, String? searchTerm, int page, int pageSize})
    super.argument,
  }) : super(
         retry: null,
         name: r'myOrdersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myOrdersHash();

  @override
  String toString() {
    return r'myOrdersProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<PaginatedOrders> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PaginatedOrders> create(Ref ref) {
    final argument =
        this.argument
            as ({String? status, String? searchTerm, int page, int pageSize});
    return myOrders(
      ref,
      status: argument.status,
      searchTerm: argument.searchTerm,
      page: argument.page,
      pageSize: argument.pageSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyOrdersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myOrdersHash() => r'09fe2c58df2de272827bcc3e85b6103297d428c9';

final class MyOrdersFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<PaginatedOrders>,
          ({String? status, String? searchTerm, int page, int pageSize})
        > {
  MyOrdersFamily._()
    : super(
        retry: null,
        name: r'myOrdersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyOrdersProvider call({
    String? status,
    String? searchTerm,
    int page = 1,
    int pageSize = 10,
  }) => MyOrdersProvider._(
    argument: (
      status: status,
      searchTerm: searchTerm,
      page: page,
      pageSize: pageSize,
    ),
    from: this,
  );

  @override
  String toString() => r'myOrdersProvider';
}

@ProviderFor(orderDetail)
final orderDetailProvider = OrderDetailFamily._();

final class OrderDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<OrderDetail>,
          OrderDetail,
          FutureOr<OrderDetail>
        >
    with $FutureModifier<OrderDetail>, $FutureProvider<OrderDetail> {
  OrderDetailProvider._({
    required OrderDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'orderDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$orderDetailHash();

  @override
  String toString() {
    return r'orderDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<OrderDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OrderDetail> create(Ref ref) {
    final argument = this.argument as String;
    return orderDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$orderDetailHash() => r'2474ee8bbc525269ddf7351b3cebc53a3d83d504';

final class OrderDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<OrderDetail>, String> {
  OrderDetailFamily._()
    : super(
        retry: null,
        name: r'orderDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OrderDetailProvider call(String orderId) =>
      OrderDetailProvider._(argument: orderId, from: this);

  @override
  String toString() => r'orderDetailProvider';
}

@ProviderFor(orderInvoice)
final orderInvoiceProvider = OrderInvoiceFamily._();

final class OrderInvoiceProvider
    extends $FunctionalProvider<AsyncValue<Invoice>, Invoice, FutureOr<Invoice>>
    with $FutureModifier<Invoice>, $FutureProvider<Invoice> {
  OrderInvoiceProvider._({
    required OrderInvoiceFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'orderInvoiceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$orderInvoiceHash();

  @override
  String toString() {
    return r'orderInvoiceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Invoice> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Invoice> create(Ref ref) {
    final argument = this.argument as String;
    return orderInvoice(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderInvoiceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$orderInvoiceHash() => r'0712fe6a0199e934b87b04b0e5c58ab2002adc17';

final class OrderInvoiceFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Invoice>, String> {
  OrderInvoiceFamily._()
    : super(
        retry: null,
        name: r'orderInvoiceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OrderInvoiceProvider call(String orderId) =>
      OrderInvoiceProvider._(argument: orderId, from: this);

  @override
  String toString() => r'orderInvoiceProvider';
}
