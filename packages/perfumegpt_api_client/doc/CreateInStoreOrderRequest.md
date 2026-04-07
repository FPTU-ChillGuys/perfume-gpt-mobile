# perfumegpt_api_client.model.CreateInStoreOrderRequest

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scannedItems** | [**List&lt;PosScanItemRequest&gt;**](PosScanItemRequest.md) |  | 
**voucherCode** | **String** |  | [optional] 
**customerId** | **String** |  | [optional] 
**isPickupInStore** | **bool** |  | [optional] 
**recipient** | [**ContactAddressInformation**](ContactAddressInformation.md) |  | [optional] 
**payment** | [**PaymentInformation**](PaymentInformation.md) |  | 
**expectedTotalPrice** | **num** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


