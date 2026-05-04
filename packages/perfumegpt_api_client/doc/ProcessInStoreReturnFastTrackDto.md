# perfumegpt_api_client.model.ProcessInStoreReturnFastTrackDto

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **String** |  | 
**orderCode** | **String** |  | 
**reason** | [**ReturnOrderReason**](ReturnOrderReason.md) |  | 
**isRefundOnly** | **bool** |  | [optional] 
**returnItems** | [**List&lt;ReturnItemDto&gt;**](ReturnItemDto.md) |  | 
**approvedRefundAmount** | **num** |  | [optional] 
**isRestocked** | **bool** |  | [optional] 
**inspectionNote** | **String** |  | [optional] 
**customerNote** | **String** |  | [optional] 
**refundBankName** | **String** |  | [optional] 
**refundAccountNumber** | **String** |  | [optional] 
**refundAccountName** | **String** |  | [optional] 
**temporaryMediaIds** | **List&lt;String&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


