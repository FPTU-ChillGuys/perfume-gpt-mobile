// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_user_log_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AllUserLogRequestCWProxy {
  AllUserLogRequest period(AllUserLogRequestPeriodEnum? period);

  AllUserLogRequest endDate(DateTime endDate);

  AllUserLogRequest startDate(DateTime? startDate);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AllUserLogRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AllUserLogRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AllUserLogRequest call({
    AllUserLogRequestPeriodEnum? period,
    DateTime endDate,
    DateTime? startDate,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAllUserLogRequest.copyWith(...)` or call `instanceOfAllUserLogRequest.copyWith.fieldName(value)` for a single field.
class _$AllUserLogRequestCWProxyImpl implements _$AllUserLogRequestCWProxy {
  const _$AllUserLogRequestCWProxyImpl(this._value);

  final AllUserLogRequest _value;

  @override
  AllUserLogRequest period(AllUserLogRequestPeriodEnum? period) =>
      call(period: period);

  @override
  AllUserLogRequest endDate(DateTime endDate) => call(endDate: endDate);

  @override
  AllUserLogRequest startDate(DateTime? startDate) =>
      call(startDate: startDate);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AllUserLogRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AllUserLogRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AllUserLogRequest call({
    Object? period = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
  }) {
    return AllUserLogRequest(
      period: period == const $CopyWithPlaceholder()
          ? _value.period
          // ignore: cast_nullable_to_non_nullable
          : period as AllUserLogRequestPeriodEnum?,
      endDate: endDate == const $CopyWithPlaceholder() || endDate == null
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime,
      startDate: startDate == const $CopyWithPlaceholder()
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime?,
    );
  }
}

extension $AllUserLogRequestCopyWith on AllUserLogRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAllUserLogRequest.copyWith(...)` or `instanceOfAllUserLogRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AllUserLogRequestCWProxy get copyWith =>
      _$AllUserLogRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllUserLogRequest _$AllUserLogRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AllUserLogRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['endDate']);
      final val = AllUserLogRequest(
        period: $checkedConvert(
          'period',
          (v) => $enumDecodeNullable(_$AllUserLogRequestPeriodEnumEnumMap, v),
        ),
        endDate: $checkedConvert('endDate', (v) => DateTime.parse(v as String)),
        startDate: $checkedConvert(
          'startDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AllUserLogRequestToJson(AllUserLogRequest instance) =>
    <String, dynamic>{
      'period': ?_$AllUserLogRequestPeriodEnumEnumMap[instance.period],
      'endDate': instance.endDate.toIso8601String(),
      'startDate': ?instance.startDate?.toIso8601String(),
    };

const _$AllUserLogRequestPeriodEnumEnumMap = {
  AllUserLogRequestPeriodEnum.weekly: 'weekly',
  AllUserLogRequestPeriodEnum.monthly: 'monthly',
  AllUserLogRequestPeriodEnum.yearly: 'yearly',
};
