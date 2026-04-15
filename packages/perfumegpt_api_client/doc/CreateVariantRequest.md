# perfumegpt_api_client.model.CreateVariantRequest

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**productId** | **String** |  | 
**barcode** | **String** |  | 
**sku** | **String** |  | 
**volumeMl** | **int** |  | [optional] 
**concentrationId** | **int** |  | [optional] 
**sillage** | **int** |  | [optional] 
**longevity** | **int** |  | [optional] 
**type** | [**VariantType**](VariantType.md) |  | [optional] 
**basePrice** | **num** |  | [optional] 
**retailPrice** | **num** |  | [optional] 
**status** | [**VariantStatus**](VariantStatus.md) |  | [optional] 
**restockPolicy** | [**ReplenishmentPolicy**](ReplenishmentPolicy.md) |  | [optional] 
**lowStockThreshold** | **int** |  | [optional] 
**attributes** | [**List&lt;ProductAttributeDto&gt;**](ProductAttributeDto.md) |  | [optional] 
**temporaryMediaIds** | **List&lt;String&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


