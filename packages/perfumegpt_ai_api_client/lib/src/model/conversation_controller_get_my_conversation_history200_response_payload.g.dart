// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_controller_get_my_conversation_history200_response_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationControllerGetMyConversationHistory200ResponsePayloadCWProxy {
  ConversationControllerGetMyConversationHistory200ResponsePayload items(
    List<ConversationResponse> items,
  );

  ConversationControllerGetMyConversationHistory200ResponsePayload pageNumber(
    num pageNumber,
  );

  ConversationControllerGetMyConversationHistory200ResponsePayload pageSize(
    num pageSize,
  );

  ConversationControllerGetMyConversationHistory200ResponsePayload totalCount(
    num totalCount,
  );

  ConversationControllerGetMyConversationHistory200ResponsePayload totalPages(
    num totalPages,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetMyConversationHistory200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetMyConversationHistory200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetMyConversationHistory200ResponsePayload call({
    List<ConversationResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationControllerGetMyConversationHistory200ResponsePayload.copyWith(...)` or call `instanceOfConversationControllerGetMyConversationHistory200ResponsePayload.copyWith.fieldName(value)` for a single field.
class _$ConversationControllerGetMyConversationHistory200ResponsePayloadCWProxyImpl
    implements
        _$ConversationControllerGetMyConversationHistory200ResponsePayloadCWProxy {
  const _$ConversationControllerGetMyConversationHistory200ResponsePayloadCWProxyImpl(
    this._value,
  );

  final ConversationControllerGetMyConversationHistory200ResponsePayload _value;

  @override
  ConversationControllerGetMyConversationHistory200ResponsePayload items(
    List<ConversationResponse> items,
  ) => call(items: items);

  @override
  ConversationControllerGetMyConversationHistory200ResponsePayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  ConversationControllerGetMyConversationHistory200ResponsePayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  ConversationControllerGetMyConversationHistory200ResponsePayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  ConversationControllerGetMyConversationHistory200ResponsePayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetMyConversationHistory200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetMyConversationHistory200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetMyConversationHistory200ResponsePayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return ConversationControllerGetMyConversationHistory200ResponsePayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ConversationResponse>,
      pageNumber:
          pageNumber == const $CopyWithPlaceholder() || pageNumber == null
          ? _value.pageNumber
          // ignore: cast_nullable_to_non_nullable
          : pageNumber as num,
      pageSize: pageSize == const $CopyWithPlaceholder() || pageSize == null
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as num,
      totalCount:
          totalCount == const $CopyWithPlaceholder() || totalCount == null
          ? _value.totalCount
          // ignore: cast_nullable_to_non_nullable
          : totalCount as num,
      totalPages:
          totalPages == const $CopyWithPlaceholder() || totalPages == null
          ? _value.totalPages
          // ignore: cast_nullable_to_non_nullable
          : totalPages as num,
    );
  }
}

extension $ConversationControllerGetMyConversationHistory200ResponsePayloadCopyWith
    on ConversationControllerGetMyConversationHistory200ResponsePayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationControllerGetMyConversationHistory200ResponsePayload.copyWith(...)` or `instanceOfConversationControllerGetMyConversationHistory200ResponsePayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationControllerGetMyConversationHistory200ResponsePayloadCWProxy
  get copyWith =>
      _$ConversationControllerGetMyConversationHistory200ResponsePayloadCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationControllerGetMyConversationHistory200ResponsePayload
_$ConversationControllerGetMyConversationHistory200ResponsePayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ConversationControllerGetMyConversationHistory200ResponsePayload',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'items',
        'pageNumber',
        'pageSize',
        'totalCount',
        'totalPages',
      ],
    );
    final val =
        ConversationControllerGetMyConversationHistory200ResponsePayload(
          items: $checkedConvert(
            'items',
            (v) => (v as List<dynamic>)
                .map(
                  (e) =>
                      ConversationResponse.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
          pageNumber: $checkedConvert('pageNumber', (v) => v as num),
          pageSize: $checkedConvert('pageSize', (v) => v as num),
          totalCount: $checkedConvert('totalCount', (v) => v as num),
          totalPages: $checkedConvert('totalPages', (v) => v as num),
        );
    return val;
  },
);

Map<String, dynamic>
_$ConversationControllerGetMyConversationHistory200ResponsePayloadToJson(
  ConversationControllerGetMyConversationHistory200ResponsePayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
