# perfumegpt_api_client.model.OrderListItem

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**code** | **String** |  | 
**customerId** | **String** |  | [optional] 
**customerName** | **String** |  | [optional] 
**staffId** | **String** |  | [optional] 
**staffName** | **String** |  | [optional] 
**type** | [**OrderType**](OrderType.md) |  | [optional] 
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**paymentStatus** | [**PaymentStatus**](PaymentStatus.md) |  | [optional] 
**totalAmount** | **num** |  | [optional] 
**requiredDepositAmount** | **num** |  | [optional] 
**paidAmount** | **num** |  | [optional] 
**remainingAmount** | **num** |  | [optional] 
**itemCount** | **int** |  | [optional] 
**isReturnalbe** | **bool** |  | [optional] 
**shippingStatus** | [**ShippingStatus**](ShippingStatus.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**paymentExpiresAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**orderDetails** | [**List&lt;OrderDetailListItem&gt;**](OrderDetailListItem.md) |  | 
**paymentTransactions** | [**List&lt;PaymentInfoResponse&gt;**](PaymentInfoResponse.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


