import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

MarkdownStyleSheet aiMessageStyleSheet(BuildContext context) {
  final textColor = Theme.of(context).colorScheme.onSurfaceVariant;
  return MarkdownStyleSheet(
    p: TextStyle(color: textColor, height: 1.5),
    strong: TextStyle(color: textColor, fontWeight: FontWeight.bold),
    em: TextStyle(color: textColor, fontStyle: FontStyle.italic),
    h1: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
    h2: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
    h3: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
    listBullet: TextStyle(color: textColor),
    code: TextStyle(
      color: textColor,
      backgroundColor:
          Theme.of(context).colorScheme.surfaceContainerHighest,
      fontSize: 13,
    ),
    codeblockDecoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(8),
    ),
  );
}