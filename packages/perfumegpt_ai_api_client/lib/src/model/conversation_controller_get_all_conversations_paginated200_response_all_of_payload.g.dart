// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_controller_get_all_conversations_paginated200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayloadCWProxy {
  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  items(List<ConversationDto> items);

  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  pageNumber(num pageNumber);

  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  pageSize(num pageSize);

  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  totalCount(num totalCount);

  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  call({
    List<ConversationDto> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload.copyWith(...)` or call `instanceOfConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayloadCWProxyImpl
    implements
        _$ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayloadCWProxy {
  const _$ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  _value;

  @override
  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  items(List<ConversationDto> items) => call(items: items);

  @override
  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  pageNumber(num pageNumber) => call(pageNumber: pageNumber);

  @override
  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  pageSize(num pageSize) => call(pageSize: pageSize);

  @override
  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  totalCount(num totalCount) => call(totalCount: totalCount);

  @override
  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  totalPages(num totalPages) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload(
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

extension $ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayloadCopyWith
    on ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload.copyWith(...)` or `instanceOfConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayloadCWProxy
  get copyWith =>
      _$ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayloadCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
_$ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload',
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
        ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload(
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
_$ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayloadToJson(
  ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload
  instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
