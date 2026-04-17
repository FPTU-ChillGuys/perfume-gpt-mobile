import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:signalr_netcore/signalr_client.dart';
import 'package:uuid/uuid.dart';

import '../models/signalr_dtos.dart';

part 'pos_signalr_service.g.dart';

class PosSignalRService {
  final String serverUrl;
  HubConnection? _hubConnection;
  String? _sessionId;

  final _paymentCompletedController =
      StreamController<PosPaymentCompletedDto>.broadcast();
  final _paymentFailedController =
      StreamController<PosPaymentCompletedDto>.broadcast();
  final _paymentLinkUpdatedController =
      StreamController<PosPaymentLinkDto>.broadcast();

  Stream<PosPaymentCompletedDto> get onPaymentCompleted =>
      _paymentCompletedController.stream;
  Stream<PosPaymentCompletedDto> get onPaymentFailed =>
      _paymentFailedController.stream;
  Stream<PosPaymentLinkDto> get onPaymentLinkUpdated =>
      _paymentLinkUpdatedController.stream;

  String? get currentSessionId => _sessionId;

  PosSignalRService({required this.serverUrl});

  Future<void> connect() async {
    if (_hubConnection != null &&
        _hubConnection!.state == HubConnectionState.Connected) {
      return;
    }

    _sessionId = const Uuid().v4();

    _hubConnection = HubConnectionBuilder()
        .withUrl(serverUrl)
        .withAutomaticReconnect()
        .build();

    _hubConnection?.on('PaymentCompleted', _handlePaymentCompleted);
    _hubConnection?.on('PaymentFailed', _handlePaymentFailed);
    _hubConnection?.on('PaymentLinkUpdated', _handlePaymentLinkUpdated);
    _hubConnection?.onclose(({Exception? error}) {
      debugPrint('SignalR Connection Closed: $error');
    });

    try {
      await _hubConnection?.start();
      await _hubConnection?.invoke('JoinPosSession', args: [_sessionId!]);
      debugPrint('SignalR Connected. Session ID: $_sessionId');
    } catch (e) {
      debugPrint('Error connecting to SignalR: $e');
    }
  }

  Future<void> disconnect() async {
    if (_hubConnection != null) {
      if (_sessionId != null) {
        try {
          await _hubConnection?.invoke('LeavePosSession', args: [_sessionId!]);
        } catch (e) {
          debugPrint('Error leaving session: $e');
        }
      }
      await _hubConnection?.stop();
      _hubConnection = null;
      _sessionId = null;
    }
  }

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

  void dispose() {
    disconnect();
    _paymentCompletedController.close();
    _paymentFailedController.close();
    _paymentLinkUpdatedController.close();
  }
}

@Riverpod(keepAlive: true)
PosSignalRService posSignalRService(Ref ref) {
  // In a real app, the serverUrl would likely come from an environment config
  final service = PosSignalRService(serverUrl: 'https://10.0.2.2:7011/posHub');
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
