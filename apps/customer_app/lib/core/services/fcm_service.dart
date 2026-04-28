import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';

class FcmService {
  FcmService._();
  static final FcmService instance = FcmService._();

  static const Map<String, String> _bearerSecure = {
    'type': 'http',
    'scheme': 'bearer',
    'name': 'Bearer',
  };

  static const String _channelId = 'order_updates';
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  bool _initialized = false;
  Future<void>? _initializing;

  Future<void> initialize(WidgetRef ref) async {
    if (_initialized) return;
    if (_initializing != null) return _initializing!;
    _initializing = _initializeInternal(ref);
    await _initializing;
  }

  Future<void> _initializeInternal(WidgetRef ref) async {
    if (_initialized) return;
    try {
      await Firebase.initializeApp();
      await _initLocalNotifications();
      await _requestPermission();
      _listenForegroundMessages();
      _listenTokenRefresh(ref);
      await syncToken(ref);
      _initialized = true;
    } finally {
      _initializing = null;
    }
  }

  Future<void> syncToken(WidgetRef ref) async {
    try {
      final token = await FirebaseMessaging.instance.getToken();
      if (token == null || token.isEmpty) return;
      await _sendTokenToBackend(ref, token);
      debugPrint('FCM token synced: $token');
    } catch (e) {
      debugPrint('FCM sync token error: $e');
    }
  }

  Future<void> _requestPermission() async {
    final settings = await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );
    debugPrint('FCM permission status: ${settings.authorizationStatus}');

    final androidPlugin = _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    await androidPlugin?.requestNotificationsPermission();
  }

  Future<void> _initLocalNotifications() async {
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidSettings);
    await _localNotifications.initialize(settings: initSettings);

    final androidPlugin = _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    await androidPlugin?.createNotificationChannel(
      const AndroidNotificationChannel(
        _channelId,
        'Order Updates',
        description: 'Notifications for orders and payments',
        importance: Importance.high,
      ),
    );
  }

  void _listenForegroundMessages() {
    FirebaseMessaging.onMessage.listen((message) async {
      debugPrint(
        'FCM onMessage received: title=${message.notification?.title}, '
        'body=${message.notification?.body}, data=${message.data}',
      );
      final notification = message.notification;
      if (notification == null) return;
      await _localNotifications.show(
        id: message.hashCode,
        title: notification.title ?? 'PerfumeGPT',
        body: notification.body ?? '',
        notificationDetails: const NotificationDetails(
          android: AndroidNotificationDetails(
            _channelId,
            'Order Updates',
            channelDescription: 'Notifications for orders and payments',
            importance: Importance.high,
            priority: Priority.high,
          ),
        ),
      );
    });
  }

  void _listenTokenRefresh(WidgetRef ref) {
    FirebaseMessaging.instance.onTokenRefresh.listen((token) async {
      if (token.isEmpty) return;
      await _sendTokenToBackend(ref, token);
      debugPrint('FCM token refreshed: $token');
    });
  }

  Future<void> _sendTokenToBackend(WidgetRef ref, String token) async {
    try {
      final dio = ref.read(apiClientProvider).dio;
      await dio.post(
        '/api/notifications/device-token',
        data: <String, dynamic>{
          'token': token,
          'platform': kIsWeb
              ? 'Web'
              : (Platform.isAndroid ? 'Android' : 'iOS'),
        },
        options: Options(extra: const {'secure': [_bearerSecure]}),
      );
    } catch (e) {
      // Keep app flow unaffected if backend endpoint is unavailable.
      debugPrint('Send FCM token to backend failed: $e');
    }
  }
}
