// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_controller_get_all_conversations_paginated200_response_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationControllerGetAllConversationsPaginated200ResponsePayloadCWProxy {
  ConversationControllerGetAllConversationsPaginated200ResponsePayload items(
    List<ConversationDto> items,
  );

  ConversationControllerGetAllConversationsPaginated200ResponsePayload
  pageNumber(num pageNumber);

  ConversationControllerGetAllConversationsPaginated200ResponsePayload pageSize(
    num pageSize,
  );

  ConversationControllerGetAllConversationsPaginated200ResponsePayload
  totalCount(num totalCount);

  ConversationControllerGetAllConversationsPaginated200ResponsePayload
  totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetAllConversationsPaginated200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetAllConversationsPaginated200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetAllConversationsPaginated200ResponsePayload call({
    List<ConversationDto> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationControllerGetAllConversationsPaginated200ResponsePayload.copyWith(...)` or call `instanceOfConversationControllerGetAllConversationsPaginated200ResponsePayload.copyWith.fieldName(value)` for a single field.
class _$ConversationControllerGetAllConversationsPaginated200ResponsePayloadCWProxyImpl
    implements
        _$ConversationControllerGetAllConversationsPaginated200ResponsePayloadCWProxy {
  const _$ConversationControllerGetAllConversationsPaginated200ResponsePayloadCWProxyImpl(
    this._value,
  );

  final ConversationControllerGetAllConversationsPaginated200ResponsePayload
  _value;

  @override
  ConversationControllerGetAllConversationsPaginated200ResponsePayload items(
    List<ConversationDto> items,
  ) => call(items: items);

  @override
  ConversationControllerGetAllConversationsPaginated200ResponsePayload
  pageNumber(num pageNumber) => call(pageNumber: pageNumber);

  @override
  ConversationControllerGetAllConversationsPaginated200ResponsePayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  ConversationControllerGetAllConversationsPaginated200ResponsePayload
  totalCount(num totalCount) => call(totalCount: totalCount);

  @override
  ConversationControllerGetAllConversationsPaginated200ResponsePayload
  totalPages(num totalPages) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetAllConversationsPaginated200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetAllConversationsPaginated200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetAllConversationsPaginated200ResponsePayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return ConversationControllerGetAllConversationsPaginated200ResponsePayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ConversationDto>,
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

extension $ConversationControllerGetAllConversationsPaginated200ResponsePayloadCopyWith
    on ConversationControllerGetAllConversationsPaginated200ResponsePayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationControllerGetAllConversationsPaginated200ResponsePayload.copyWith(...)` or `instanceOfConversationControllerGetAllConversationsPaginated200ResponsePayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationControllerGetAllConversationsPaginated200ResponsePayloadCWProxy
  get copyWith =>
      _$ConversationControllerGetAllConversationsPaginated200ResponsePayloadCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationControllerGetAllConversationsPaginated200ResponsePayload
_$ConversationControllerGetAllConversationsPaginated200ResponsePayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ConversationControllerGetAllConversationsPaginated200ResponsePayload',
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
        ConversationControllerGetAllConversationsPaginated200ResponsePayload(
          items: $checkedConvert(
            'items',
            (v) => (v as List<dynamic>)
                .map((e) => ConversationDto.fromJson(e as Map<String, dynamic>))
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
_$ConversationControllerGetAllConversationsPaginated200ResponsePayloadToJson(
  ConversationControllerGetAllConversationsPaginated200ResponsePayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
