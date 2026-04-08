//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'temporary_media_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TemporaryMediaResponse {
  /// Returns a new [TemporaryMediaResponse] instance.
  TemporaryMediaResponse({

     this.id,

    required  this.url,

     this.altText,

     this.displayOrder,

     this.fileSize,

     this.mimeType,

     this.expiresAt,

     this.createdAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'url',
    required: true,
    includeIfNull: false,
  )


  final String url;



  @JsonKey(
    
    name: r'altText',
    required: false,
    includeIfNull: false,
  )


  final String? altText;



  @JsonKey(
    
    name: r'displayOrder',
    required: false,
    includeIfNull: false,
  )


  final int? displayOrder;



  @JsonKey(
    
    name: r'fileSize',
    required: false,
    includeIfNull: false,
  )


  final int? fileSize;



  @JsonKey(
    
    name: r'mimeType',
    required: false,
    includeIfNull: false,
  )


  final String? mimeType;



  @JsonKey(
    
    name: r'expiresAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? expiresAt;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TemporaryMediaResponse &&
      other.id == id &&
      other.url == url &&
      other.altText == altText &&
      other.displayOrder == displayOrder &&
      other.fileSize == fileSize &&
      other.mimeType == mimeType &&
      other.expiresAt == expiresAt &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        id.hashCode +
        url.hashCode +
        (altText == null ? 0 : altText.hashCode) +
        displayOrder.hashCode +
        (fileSize == null ? 0 : fileSize.hashCode) +
        (mimeType == null ? 0 : mimeType.hashCode) +
        expiresAt.hashCode +
        createdAt.hashCode;

  factory TemporaryMediaResponse.fromJson(Map<String, dynamic> json) => _$TemporaryMediaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TemporaryMediaResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

