# perfumegpt_api_client.model.PaymentTransactionAdminItemResponse

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
**method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**transactionType** | [**TransactionType**](TransactionType.md) |  | [optional] 
**transactionStatus** | [**TransactionStatus**](TransactionStatus.md) |  | [optional] 
**amount** | **num** |  | [optional] 
**gatewayTransactionNo** | **String** |  | [optional] 
**failureReason** | **String** |  | [optional] 
**originalPaymentId** | **String** |  | [optional] 
**retryAttempt** | **int** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


