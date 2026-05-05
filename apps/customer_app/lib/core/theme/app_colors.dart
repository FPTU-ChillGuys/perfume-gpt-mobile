import 'package:flutter/material.dart';

/// Shared color palette for the entire customer app.
/// All pages should reference these constants instead of hardcoding hex values.
class AppColors {
  AppColors._();

  // ── Brand ─────────────────────────────────────────────────────────────
  static const Color primary = Color(0xFFC8372D); // Red
  static const Color primaryDark = Color(0xFFAA2D23); // Red Dark
  static const Color primaryDarker = Color(0xFF8C221A); // Red Darker
  static const Color accent = Color(0xFFE53935); // Red Accent
  static const Color primaryLight = Color(0xFFFFEBEA); // Red 50
  static const Color primaryBorder = Color(0xFFFFCDD2); // Red 100

  // ── Surface / neutral ─────────────────────────────────────────────────
  static const Color surface = Color(0xFFF8FAFC);
  static const Color border = Color(0xFFE2E8F0);
  static const Color borderLight = Color(0xFFF1F5F9);
  static const Color textPrimary = Color(0xFF334155);
  static const Color textSecondary = Color(0xFF64748B);
  static const Color skeleton = Color(0xFFF1F5F9);

  // ── Hero gradient ─────────────────────────────────────────────────────
  static const Color heroStart = Color(0xFFAA2D23);
  static const Color heroEnd = Color(0xFF8C221A);

  // ── Generic semantic colors ──────────────────────────────────────────────
  static const Color success = Color(0xFF16A34A);
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF2563EB);
  static const Color danger = Color(0xFFDC2626);

  // ── Status colors (semantic — keep these separate) ────────────────────
  static const Color statusPending = Colors.orange;
  static const Color statusPreparing = Color(0xFFC8372D);
  static const Color statusReadyToPick = Color(0xFF1565C0); // Blue 800
  static const Color statusProcessing = Color(0xFFC8372D);
  static const Color statusDelivering = Color(0xFFE53935);
  static const Color statusDelivered = Colors.green;
  static const Color statusCancelled = Colors.red;
  static const Color statusReturning = Colors.deepOrange;

  // ── Payment status ────────────────────────────────────────────────────
  static const Color paymentUnpaid = Colors.orange;
  static const Color paymentPaid = Colors.green;
  static const Color paymentPartialRefund = Color(0xFFF9A825);
  static const Color paymentRefunded = Colors.teal;
}
