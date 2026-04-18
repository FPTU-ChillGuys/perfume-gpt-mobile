import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:signalr_netcore/signalr_client.dart';

import '../models/signalr_dtos.dart';

part 'pos_signalr_service.g.dart';

class PosSignalRService {
  final String serverUrl;
  HubConnection? _hubConnection;
  String? _sessionId;
  final _connectionStateController =
      StreamController<HubConnectionState>.broadcast();

  final _paymentCompletedController =
      StreamController<PosPaymentCompletedDto>.broadcast();
  final _paymentFailedController =
      StreamController<PosPaymentCompletedDto>.broadcast();
  final _paymentLinkUpdatedController =
      StreamController<PosPaymentLinkDto>.broadcast();
  final _barcodeReceivedController = StreamController<String>.broadcast();
  final _orderDeliveredController = StreamController<String>.broadcast();
  final _displayUpdateController = StreamController<CartDisplayDto>.broadcast();
  final _onlineOrderReceivedController = StreamController<Map<String, dynamic>>.broadcast();

  Stream<HubConnectionState> get connectionState =>
      _connectionStateController.stream;
  Stream<PosPaymentCompletedDto> get onPaymentCompleted =>
      _paymentCompletedController.stream;
  Stream<PosPaymentCompletedDto> get onPaymentFailed =>
      _paymentFailedController.stream;
  Stream<PosPaymentLinkDto> get onPaymentLinkUpdated =>
      _paymentLinkUpdatedController.stream;
  Stream<String> get onBarcodeReceived => _barcodeReceivedController.stream;
  Stream<String> get onOrderDelivered => _orderDeliveredController.stream;
  Stream<CartDisplayDto> get onDisplayUpdate => _displayUpdateController.stream;
  Stream<Map<String, dynamic>> get onOnlineOrderReceived => _onlineOrderReceivedController.stream;

  String? get currentSessionId => _sessionId;
  HubConnectionState get currentState =>
      _hubConnection?.state ?? HubConnectionState.Disconnected;

  PosSignalRService({required this.serverUrl});

  Future<void> connect({String sessionId = "COUNTER_01"}) async {
    if (_hubConnection != null &&
        _hubConnection!.state == HubConnectionState.Connected) {
      if (_sessionId == sessionId) return;
      await disconnect();
    }

    _sessionId = sessionId;

    _hubConnection = HubConnectionBuilder()
        .withUrl(serverUrl)
        .withAutomaticReconnect()
        .build();

    // Register Handlers (IPosClient interface)
    _hubConnection?.on('PaymentCompleted', _handlePaymentCompleted);
    _hubConnection?.on('PaymentFailed', _handlePaymentFailed);
    _hubConnection?.on('PaymentLinkUpdated', _handlePaymentLinkUpdated);
    _hubConnection?.on('UpdateCustomerDisplay', _handleUpdateCustomerDisplay);
    _hubConnection?.on('ReceiveBarcode', _handleReceiveBarcode);
    _hubConnection?.on('OrderDelivered', _handleOrderDelivered);
    _hubConnection?.on('ReceiveOnlineOrder', _handleReceiveOnlineOrder);

    _hubConnection?.onreconnecting(({Exception? error}) {
      _connectionStateController.add(HubConnectionState.Reconnecting);
    });

    _hubConnection?.onreconnected(({String? connectionId}) {
      _connectionStateController.add(HubConnectionState.Connected);
      _joinSession();
    });

    _hubConnection?.onclose(({Exception? error}) {
      _connectionStateController.add(HubConnectionState.Disconnected);
      debugPrint('SignalR Connection Closed: $error');
    });

    try {
      await _hubConnection?.start();
      _connectionStateController.add(HubConnectionState.Connected);
      await _joinSession();
    } catch (e) {
      debugPrint('Error connecting to SignalR: $e');
      _connectionStateController.add(HubConnectionState.Disconnected);
    }
  }

  Future<void> _joinSession() async {
    if (_hubConnection?.state == HubConnectionState.Connected &&
        _sessionId != null) {
      try {
        await _hubConnection?.invoke('JoinPosSession', args: [_sessionId!]);
        debugPrint('Joined POS session: $_sessionId');
      } catch (e) {
        debugPrint('Error joining session: $e');
      }
    }
  }

  Future<void> disconnect() async {
    if (_hubConnection != null) {
      if (_sessionId != null &&
          _hubConnection!.state == HubConnectionState.Connected) {
        try {
          await _hubConnection?.invoke('LeavePosSession', args: [_sessionId!]);
        } catch (e) {
          debugPrint('Error leaving session: $e');
        }
      }
      await _hubConnection?.stop();
      _hubConnection = null;
      _sessionId = null;
      _connectionStateController.add(HubConnectionState.Disconnected);
    }
  }

  // Hub Invocations

  Future<void> syncCartToCustomerDisplay(CartDisplayDto cartData) async {
    if (_hubConnection?.state == HubConnectionState.Connected &&
        _sessionId != null) {
      try {
        await _hubConnection?.invoke(
          'SyncCartToCustomerDisplay',
          args: [_sessionId!, cartData.toJson()],
        );
      } catch (e) {
        debugPrint('Error syncing cart: $e');
      }
    }
  }

  Future<void> syncOnlineOrderToCustomerDisplay(Map<String, dynamic> orderData) async {
    if (_hubConnection?.state == HubConnectionState.Connected &&
        _sessionId != null) {
      try {
        await _hubConnection?.invoke(
          'SyncOnlineOrderToCustomerDisplay',
          args: [_sessionId!, orderData],
        );
      } catch (e) {
        debugPrint('Error syncing online order: $e');
      }
    }
  }

  Future<void> sendBarcodeFromMobile(String barcode) async {
    if (_hubConnection?.state == HubConnectionState.Connected &&
        _sessionId != null) {
      try {
        await _hubConnection?.invoke(
          'SendBarcodeFromMobile',
          args: [_sessionId!, barcode],
        );
      } catch (e) {
        debugPrint('Error sending barcode: $e');
      }
    }
  }

  Future<void> notifyPaymentSuccess(PosPaymentCompletedDto paymentData) async {
    if (_hubConnection?.state == HubConnectionState.Connected &&
        _sessionId != null) {
      try {
        await _hubConnection?.invoke(
          'NotifyPaymentSuccess',
          args: [_sessionId!, paymentData.toJson()],
        );
      } catch (e) {
        debugPrint('Error notifying payment success: $e');
      }
    }
  }

  Future<void> notifyPaymentFailed(PosPaymentCompletedDto paymentData) async {
    if (_hubConnection?.state == HubConnectionState.Connected &&
        _sessionId != null) {
      try {
        await _hubConnection?.invoke(
          'NotifyPaymentFailed',
          args: [_sessionId!, paymentData.toJson()],
        );
      } catch (e) {
        debugPrint('Error notifying payment failed: $e');
      }
    }
  }

  Future<void> notifyPaymentLinkUpdated(PosPaymentLinkDto paymentData) async {
    if (_hubConnection?.state == HubConnectionState.Connected &&
        _sessionId != null) {
      try {
        await _hubConnection?.invoke(
          'NotifyPaymentLinkUpdated',
          args: [_sessionId!, paymentData.toJson()],
        );
      } catch (e) {
        debugPrint('Error notifying payment link updated: $e');
      }
    }
  }

  Future<void> notifyOrderDelivered(String orderCode) async {
    if (_hubConnection?.state == HubConnectionState.Connected &&
        _sessionId != null) {
      try {
        await _hubConnection?.invoke(
          'NotifyOrderDelivered',
          args: [_sessionId!, orderCode],
        );
      } catch (e) {
        debugPrint('Error notifying order delivered: $e');
      }
    }
  }

  // Client Handlers

  void _handlePaymentCompleted(List<Object?>? args) {
    if (args != null && args.isNotEmpty) {
      try {
        final data = args[0] as Map<String, dynamic>;
        _paymentCompletedController.add(PosPaymentCompletedDto.fromJson(data));
      } catch (e) {
        debugPrint('Error parsing PaymentCompleted: $e');
      }
    }
  }

  void _handlePaymentFailed(List<Object?>? args) {
    if (args != null && args.isNotEmpty) {
      try {
        final data = args[0] as Map<String, dynamic>;
        _paymentFailedController.add(PosPaymentCompletedDto.fromJson(data));
      } catch (e) {
        debugPrint('Error parsing PaymentFailed: $e');
      }
    }
  }

  void _handlePaymentLinkUpdated(List<Object?>? args) {
    if (args != null && args.isNotEmpty) {
      try {
        final data = args[0] as Map<String, dynamic>;
        _paymentLinkUpdatedController.add(PosPaymentLinkDto.fromJson(data));
      } catch (e) {
        debugPrint('Error parsing PaymentLinkUpdated: $e');
      }
    }
  }

  void _handleUpdateCustomerDisplay(List<Object?>? args) {
    if (args != null && args.isNotEmpty) {
      try {
        final data = args[0] as Map<String, dynamic>;
        _displayUpdateController.add(CartDisplayDto.fromJson(data));
      } catch (e) {
        debugPrint('Error parsing UpdateCustomerDisplay: $e');
      }
    }
  }

  void _handleReceiveBarcode(List<Object?>? args) {
    if (args != null && args.isNotEmpty) {
      _barcodeReceivedController.add(args[0].toString());
    }
  }

  void _handleOrderDelivered(List<Object?>? args) {
    if (args != null && args.isNotEmpty) {
      _orderDeliveredController.add(args[0].toString());
    }
  }

  void _handleReceiveOnlineOrder(List<Object?>? args) {
    if (args != null && args.isNotEmpty) {
      try {
        final data = args[0] as Map<String, dynamic>;
        _onlineOrderReceivedController.add(data);
      } catch (e) {
        debugPrint('Error parsing ReceiveOnlineOrder: $e');
      }
    }
  }

  void dispose() {
    disconnect();
    _paymentCompletedController.close();
    _paymentFailedController.close();
    _paymentLinkUpdatedController.close();
    _barcodeReceivedController.close();
    _orderDeliveredController.close();
    _displayUpdateController.close();
    _onlineOrderReceivedController.close();
    _connectionStateController.close();
  }
}

@Riverpod(keepAlive: true)
PosSignalRService posSignalRService(Ref ref) {
  final service = PosSignalRService(
    serverUrl: 'https://backend-sep490.vqnofficial.win/posHub',
  );
  service.connect();
  ref.onDispose(() {
    service.dispose();
  });
  return service;
}

@riverpod
Stream<PosPaymentCompletedDto> paymentCompletedEvent(Ref ref) {
  return ref.watch(posSignalRServiceProvider).onPaymentCompleted;
}

@riverpod
Stream<PosPaymentCompletedDto> paymentFailedEvent(Ref ref) {
  return ref.watch(posSignalRServiceProvider).onPaymentFailed;
}

@riverpod
Stream<PosPaymentLinkDto> paymentLinkUpdatedEvent(Ref ref) {
  return ref.watch(posSignalRServiceProvider).onPaymentLinkUpdated;
}

@riverpod
Stream<String> barcodeReceivedEvent(Ref ref) {
  return ref.watch(posSignalRServiceProvider).onBarcodeReceived;
}

@riverpod
Stream<String> orderDeliveredEvent(Ref ref) {
  return ref.watch(posSignalRServiceProvider).onOrderDelivered;
}

@riverpod
Stream<CartDisplayDto> displayUpdateEvent(Ref ref) {
  return ref.watch(posSignalRServiceProvider).onDisplayUpdate;
}

@riverpod
Stream<Map<String, dynamic>> onlineOrderReceivedEvent(Ref ref) {
  return ref.watch(posSignalRServiceProvider).onOnlineOrderReceived;
}
