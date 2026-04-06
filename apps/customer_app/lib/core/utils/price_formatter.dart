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

/// Converts an HTML string from the API into plain readable text.
/// Handles block elements (p, div, br, li, h1-h6), inline formatting,
/// and common HTML entities.
String stripHtml(String html) {
  if (html.isEmpty) return html;

  return html
      // Block-level elements → newlines
      .replaceAll(RegExp(r'<br\s*/?>',                      caseSensitive: false), '\n')
      .replaceAll(RegExp(r'</?(?:p|div|section|article)\b[^>]*>', caseSensitive: false), '\n')
      .replaceAll(RegExp(r'</?(?:h[1-6])\b[^>]*>',         caseSensitive: false), '\n')
      // List items → bullet
      .replaceAll(RegExp(r'<li\b[^>]*>',                    caseSensitive: false), '\n• ')
      .replaceAll(RegExp(r'</li>',                          caseSensitive: false), '')
      .replaceAll(RegExp(r'</?(?:ul|ol)\b[^>]*>',          caseSensitive: false), '\n')
      // Strip all remaining tags
      .replaceAll(RegExp(r'<[^>]+>'), '')
      // Decode common HTML entities
      .replaceAll('&nbsp;',  ' ')
      .replaceAll('&amp;',   '&')
      .replaceAll('&lt;',    '<')
      .replaceAll('&gt;',    '>')
      .replaceAll('&quot;',  '"')
      .replaceAll('&#39;',   "'")
      .replaceAll('&apos;',  "'")
      .replaceAll('&ndash;', '–')
      .replaceAll('&mdash;', '—')
      .replaceAll('&hellip;','…')
      // Collapse 3+ consecutive newlines to at most 2
      .replaceAll(RegExp(r'\n{3,}'), '\n\n')
      // Collapse runs of spaces/tabs (but not newlines)
      .replaceAll(RegExp(r'[ \t]{2,}'), ' ')
      .trim();
}
