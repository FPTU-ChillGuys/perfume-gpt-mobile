import 'package:intl/intl.dart';

/// Normalizes API timestamps for Vietnam display (UTC+7).
class DateTimeHelper {
  DateTimeHelper._();

  static final DateFormat _dateFmt = DateFormat('dd/MM/yyyy');
  static final DateFormat _dateTimeFmt = DateFormat('dd/MM/yyyy HH:mm');
  static const Duration _utc7Offset = Duration(hours: 7);

  static DateTime toUtc7(DateTime value) {
    final utc = value.isUtc ? value : value.toUtc();
    return utc.add(_utc7Offset);
  }

  static DateTime nowUtc7() => toUtc7(DateTime.now());

  static String formatDate(DateTime? value, {String fallback = '-'}) {
    if (value == null) return fallback;
    return _dateFmt.format(toUtc7(value));
  }

  static String formatDateTime(DateTime? value, {String fallback = '-'}) {
    if (value == null) return fallback;
    return _dateTimeFmt.format(toUtc7(value));
  }
}
