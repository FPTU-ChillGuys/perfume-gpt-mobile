import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

enum SenderModel {
  @JsonValue('user')
  user,

  @JsonValue('assistant')
  assistant,
}

@freezed
abstract class MessageModel with _$MessageModel {
  const factory MessageModel({
    required SenderModel sender,
    required String message,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}