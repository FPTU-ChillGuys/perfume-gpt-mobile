# perfumegpt_api_client.model.CreateProductRequest

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**brandId** | **int** |  | [optional] 
**categoryId** | **int** |  | [optional] 
**gender** | [**Gender**](Gender.md) |  | [optional] 
**origin** | **String** |  | 
**releaseYear** | **int** |  | [optional] 
**description** | **String** |  | [optional] 
**olfactoryFamilyIds** | **BuiltList&lt;int&gt;** |  | 
**temporaryMediaIds** | **BuiltList&lt;String&gt;** |  | [optional] 
**scentNotes** | [**BuiltList&lt;ScentNoteDto&gt;**](ScentNoteDto.md) |  | 
**attributes** | [**BuiltList&lt;ProductAttributeDto&gt;**](ProductAttributeDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


