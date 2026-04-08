# perfumegpt_api_client.model.OrderReturnRequestResponse

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**orderId** | **String** |  | [optional] 
**orderCode** | **String** |  | 
**customerId** | **String** |  | [optional] 
**customerEmail** | **String** |  | [optional] 
**processedById** | **String** |  | [optional] 
**processedByName** | **String** |  | [optional] 
**inspectedById** | **String** |  | [optional] 
**inspectedByName** | **String** |  | [optional] 
**reason** | **String** |  | 
**customerNote** | **String** |  | [optional] 
**staffNote** | **String** |  | [optional] 
**inspectionNote** | **String** |  | [optional] 
**status** | [**ReturnRequestStatus**](ReturnRequestStatus.md) |  | [optional] 
**requestedRefundAmount** | **num** |  | [optional] 
**approvedRefundAmount** | **num** |  | [optional] 
**isRefunded** | **bool** |  | [optional] 
**isRefundOnly** | **bool** |  | [optional] 
**refundBankName** | **String** |  | [optional] 
**refundAccountName** | **String** |  | [optional] 
**refundAccountNumber** | **String** |  | [optional] 
**vnpTransactionNo** | **String** |  | [optional] 
**isRestocked** | **bool** |  | [optional] 
**returnShippingInfo** | [**ReturnShippingInfoResponse**](ReturnShippingInfoResponse.md) |  | [optional] 
**returnDetails** | [**List&lt;OrderReturnRequestDetailResponse&gt;**](OrderReturnRequestDetailResponse.md) |  | [optional] 
**proofImages** | [**List&lt;MediaResponse&gt;**](MediaResponse.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


