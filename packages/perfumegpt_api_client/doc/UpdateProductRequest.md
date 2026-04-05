# perfumegpt_api_client.model.UpdateProductRequest

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
**description** | **String** |  | [optional] 
**gender** | [**Gender**](Gender.md) |  | [optional] 
**origin** | **String** |  | 
**releaseYear** | **int** |  | [optional] 
**olfactoryFamilyIds** | **BuiltList&lt;int&gt;** |  | 
**scentNotes** | [**BuiltList&lt;ScentNoteDto&gt;**](ScentNoteDto.md) |  | 
**attributes** | [**BuiltList&lt;ProductAttributeDto&gt;**](ProductAttributeDto.md) |  | [optional] 
**temporaryMediaIdsToAdd** | **BuiltList&lt;String&gt;** |  | [optional] 
**mediaIdsToDelete** | **BuiltList&lt;String&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


