//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'supplier_lookup_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SupplierLookupItem {
  /// Returns a new [SupplierLookupItem] instance.
  SupplierLookupItem({

     this.id,

     this.name,

     this.phone,

     this.contactEmail,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'phone',
    required: false,
    includeIfNull: false,
  )


  final String? phone;



  @JsonKey(
    
    name: r'contactEmail',
    required: false,
    includeIfNull: false,
  )


  final String? contactEmail;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SupplierLookupItem &&
      other.id == id &&
      other.name == name &&
      other.phone == phone &&
      other.contactEmail == contactEmail;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (phone == null ? 0 : phone.hashCode) +
        (contactEmail == null ? 0 : contactEmail.hashCode);

  factory SupplierLookupItem.fromJson(Map<String, dynamic> json) => _$SupplierLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$SupplierLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

