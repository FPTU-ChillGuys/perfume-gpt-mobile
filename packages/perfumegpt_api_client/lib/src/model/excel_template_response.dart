//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'excel_template_response.g.dart';

/// ExcelTemplateResponse
///
/// Properties:
/// * [fileContent] 
/// * [fileName] 
/// * [contentType] 
@BuiltValue()
abstract class ExcelTemplateResponse implements Built<ExcelTemplateResponse, ExcelTemplateResponseBuilder> {
  @BuiltValueField(wireName: r'fileContent')
  String get fileContent;

  @BuiltValueField(wireName: r'fileName')
  String get fileName;

  @BuiltValueField(wireName: r'contentType')
  String? get contentType;

  ExcelTemplateResponse._();

  factory ExcelTemplateResponse([void updates(ExcelTemplateResponseBuilder b)]) = _$ExcelTemplateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExcelTemplateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExcelTemplateResponse> get serializer => _$ExcelTemplateResponseSerializer();
}

class _$ExcelTemplateResponseSerializer implements PrimitiveSerializer<ExcelTemplateResponse> {
  @override
  final Iterable<Type> types = const [ExcelTemplateResponse, _$ExcelTemplateResponse];

  @override
  final String wireName = r'ExcelTemplateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExcelTemplateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fileContent';
    yield serializers.serialize(
      object.fileContent,
      specifiedType: const FullType(String),
    );
    yield r'fileName';
    yield serializers.serialize(
      object.fileName,
      specifiedType: const FullType(String),
    );
    if (object.contentType != null) {
      yield r'contentType';
      yield serializers.serialize(
        object.contentType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExcelTemplateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExcelTemplateResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fileContent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fileContent = valueDes;
          break;
        case r'fileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fileName = valueDes;
          break;
        case r'contentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExcelTemplateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExcelTemplateResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

