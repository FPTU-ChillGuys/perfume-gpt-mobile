import 'package:intl/intl.dart';

class PriceFormatter {
  static final _formatter = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: 'đ',
    decimalDigits: 0,
  );

  static String format(double price) {
    return _formatter.format(price);
  }

  static String formatRange(double min, double max) {
    if (min == max) return format(min);
    return '${format(min)} - ${format(max)}';
  }
}
