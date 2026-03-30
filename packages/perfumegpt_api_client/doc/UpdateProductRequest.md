# perfumegpt_api_client.model.UpdateProductRequest

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**brandId** | **int** |  | [optional] 
**categoryId** | **int** |  | [optional] 
**description** | **String** |  | [optional] 
**gender** | [**Gender**](Gender.md) |  | [optional] 
**origin** | **String** |  | 
**releaseYear** | **int** |  | [optional] 
**olfactoryFamilyIds** | **List&lt;int&gt;** |  | [optional] 
**scentNotes** | [**List&lt;ScentNoteDto&gt;**](ScentNoteDto.md) |  | [optional] 
**attributes** | [**List&lt;ProductAttributeDto&gt;**](ProductAttributeDto.md) |  | [optional] 
**temporaryMediaIdsToAdd** | **List&lt;String&gt;** |  | [optional] 
**mediaIdsToDelete** | **List&lt;String&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


