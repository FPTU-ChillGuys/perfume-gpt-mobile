// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_controller_get_structured_review_summary_by_variant_id200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseCWProxy {
  ReviewControllerGetStructuredReviewSummaryByVariantId200Response success(
    bool? success,
  );

  ReviewControllerGetStructuredReviewSummaryByVariantId200Response error(
    String? error,
  );

  ReviewControllerGetStructuredReviewSummaryByVariantId200Response details(
    String? details,
  );

  ReviewControllerGetStructuredReviewSummaryByVariantId200Response data(
    AIReviewSummaryStructuredResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetStructuredReviewSummaryByVariantId200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetStructuredReviewSummaryByVariantId200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetStructuredReviewSummaryByVariantId200Response call({
    bool? success,
    String? error,
    String? details,
    AIReviewSummaryStructuredResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReviewControllerGetStructuredReviewSummaryByVariantId200Response.copyWith(...)` or call `instanceOfReviewControllerGetStructuredReviewSummaryByVariantId200Response.copyWith.fieldName(value)` for a single field.
class _$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseCWProxyImpl
    implements
        _$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseCWProxy {
  const _$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseCWProxyImpl(
    this._value,
  );

  final ReviewControllerGetStructuredReviewSummaryByVariantId200Response _value;

  @override
  ReviewControllerGetStructuredReviewSummaryByVariantId200Response success(
    bool? success,
  ) => call(success: success);

  @override
  ReviewControllerGetStructuredReviewSummaryByVariantId200Response error(
    String? error,
  ) => call(error: error);

  @override
  ReviewControllerGetStructuredReviewSummaryByVariantId200Response details(
    String? details,
  ) => call(details: details);

  @override
  ReviewControllerGetStructuredReviewSummaryByVariantId200Response data(
    AIReviewSummaryStructuredResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetStructuredReviewSummaryByVariantId200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetStructuredReviewSummaryByVariantId200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetStructuredReviewSummaryByVariantId200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ReviewControllerGetStructuredReviewSummaryByVariantId200Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as AIReviewSummaryStructuredResponse?,
    );
  }
}

extension $ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseCopyWith
    on ReviewControllerGetStructuredReviewSummaryByVariantId200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReviewControllerGetStructuredReviewSummaryByVariantId200Response.copyWith(...)` or `instanceOfReviewControllerGetStructuredReviewSummaryByVariantId200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseCWProxy
  get copyWith =>
      _$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewControllerGetStructuredReviewSummaryByVariantId200Response
_$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ReviewControllerGetStructuredReviewSummaryByVariantId200Response',
  json,
  ($checkedConvert) {
    final val =
        ReviewControllerGetStructuredReviewSummaryByVariantId200Response(
          success: $checkedConvert('success', (v) => v as bool?),
          error: $checkedConvert('error', (v) => v as String?),
          details: $checkedConvert('details', (v) => v as String?),
          data: $checkedConvert(
            'data',
            (v) => v == null
                ? null
                : AIReviewSummaryStructuredResponse.fromJson(
                    v as Map<String, dynamic>,
                  ),
          ),
        );
    return val;
  },
);

Map<String, dynamic>
_$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseToJson(
  ReviewControllerGetStructuredReviewSummaryByVariantId200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
