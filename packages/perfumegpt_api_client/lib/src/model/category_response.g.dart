// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CategoryResponseCWProxy {
  CategoryResponse id(int? id);

  CategoryResponse name(String? name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CategoryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CategoryResponse call({int? id, String? name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCategoryResponse.copyWith(...)` or call `instanceOfCategoryResponse.copyWith.fieldName(value)` for a single field.
class _$CategoryResponseCWProxyImpl implements _$CategoryResponseCWProxy {
  const _$CategoryResponseCWProxyImpl(this._value);

  final CategoryResponse _value;

  @override
  CategoryResponse id(int? id) => call(id: id);

  @override
  CategoryResponse name(String? name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CategoryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CategoryResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return CategoryResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $CategoryResponseCopyWith on CategoryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCategoryResponse.copyWith(...)` or `instanceOfCategoryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CategoryResponseCWProxy get copyWith => _$CategoryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CategoryResponse', json, ($checkedConvert) {
      final val = CategoryResponse(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CategoryResponseToJson(CategoryResponse instance) =>
    <String, dynamic>{'id': ?instance.id, 'name': ?instance.name};
