import 'package:flutter/material.dart';

/// Shared color palette for the entire customer app.
/// All pages should reference these constants instead of hardcoding hex values.
class AppColors {
  AppColors._();

  // ── Brand ─────────────────────────────────────────────────────────────
  static const Color primary = Color(0xFF5E35B1);       // Deep Purple 600
  static const Color primaryDark = Color(0xFF4527A0);    // Deep Purple 800
  static const Color primaryDarker = Color(0xFF311B92);  // Deep Purple 900
  static const Color accent = Color(0xFF7C4DFF);         // Deep Purple Accent
  static const Color primaryLight = Color(0xFFEDE7F6);   // Deep Purple 50
  static const Color primaryBorder = Color(0xFFD1C4E9);  // Deep Purple 100

  // ── Surface / neutral ─────────────────────────────────────────────────
  static const Color surface = Color(0xFFF8FAFC);
  static const Color border = Color(0xFFE2E8F0);
  static const Color borderLight = Color(0xFFF1F5F9);
  static const Color textPrimary = Color(0xFF334155);
  static const Color textSecondary = Color(0xFF64748B);
  static const Color skeleton = Color(0xFFF1F5F9);

  // ── Hero gradient ─────────────────────────────────────────────────────
  static const Color heroStart = Color(0xFF4527A0);
  static const Color heroEnd = Color(0xFF311B92);

  // ── Status colors (semantic — keep these separate) ────────────────────
  static const Color statusPending = Colors.orange;
  static const Color statusProcessing = Color(0xFF5E35B1);
  static const Color statusDelivering = Color(0xFF7C4DFF);
  static const Color statusDelivered = Colors.green;
  static const Color statusCancelled = Colors.red;
  static const Color statusReturning = Colors.deepOrange;

  // ── Payment status ────────────────────────────────────────────────────
  static const Color paymentUnpaid = Colors.orange;
  static const Color paymentPaid = Colors.green;
  static const Color paymentPartialRefund = Color(0xFFF9A825);
  static const Color paymentRefunded = Colors.teal;
}
