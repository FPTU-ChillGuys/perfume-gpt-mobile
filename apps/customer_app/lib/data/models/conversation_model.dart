import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_model.dart';

part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@freezed
abstract class ConversationModel with _$ConversationModel{
  const factory ConversationModel({
    required String id,
    String? userId,
    required List<MessageModel> messages,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);
}

ConversationModel convertStringifyToConversationRequestModel(
  String messages,
) {
  dynamic result = messages;

  if (result is String && result.trim().startsWith('"')) {
    result = jsonDecode(result);
  }

  final dynamic obj = jsonDecode(result as String);
  if (obj is! Map<String, dynamic>) {
    throw const FormatException('Invalid conversation payload format');
  }

  return ConversationModel.fromJson(obj);
}