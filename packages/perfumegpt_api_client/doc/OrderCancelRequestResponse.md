# perfumegpt_api_client.model.OrderCancelRequestResponse

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
**requestedById** | **String** |  | [optional] 
**requestedByEmail** | **String** |  | [optional] 
**processedById** | **String** |  | [optional] 
**reason** | **String** |  | 
**staffNote** | **String** |  | [optional] 
**status** | [**CancelRequestStatus**](CancelRequestStatus.md) |  | [optional] 
**isRefundRequired** | **bool** |  | [optional] 
**refundAmount** | **num** |  | [optional] 
**isRefunded** | **bool** |  | [optional] 
**refundBankName** | **String** |  | [optional] 
**refundAccountName** | **String** |  | [optional] 
**refundAccountNumber** | **String** |  | [optional] 
**vnpTransactionNo** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**refundedPaymentStatus** | [**TransactionStatus**](TransactionStatus.md) |  | [optional] 
**refundedPaymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**refundedAmount** | **num** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


