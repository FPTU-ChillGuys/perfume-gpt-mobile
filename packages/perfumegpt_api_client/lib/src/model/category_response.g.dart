// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CategoryResponseCWProxy {
  CategoryResponse id(int? id);

  CategoryResponse name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CategoryResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  CategoryResponse call({int? id, String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCategoryResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCategoryResponse.copyWith.fieldName(...)`
class _$CategoryResponseCWProxyImpl implements _$CategoryResponseCWProxy {
  const _$CategoryResponseCWProxyImpl(this._value);

  final CategoryResponse _value;

  @override
  CategoryResponse id(int? id) => this(id: id);

  @override
  CategoryResponse name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CategoryResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfCategoryResponse.copyWith(...)` or like so:`instanceOfCategoryResponse.copyWith.fieldName(...)`.
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
