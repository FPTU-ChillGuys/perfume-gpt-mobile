# perfumegpt_ai_api_client.model.OrderResponse

## Load the model package
```dart
import 'package:perfumegpt_ai_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**code** | **String** |  | 
**customerId** | **String** |  | [optional] 
**customerName** | **String** |  | [optional] 
**customerEmail** | **String** |  | [optional] 
**staffId** | **String** |  | [optional] 
**staffName** | **String** |  | [optional] 
**type** | [**OrderType**](OrderType.md) |  | [optional] 
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**paymentStatus** | [**PaymentStatus**](PaymentStatus.md) |  | [optional] 
**totalAmount** | **num** |  | [optional] 
**voucherId** | **String** |  | [optional] 
**voucherCode** | **String** |  | [optional] 
**paymentExpiresAt** | [**DateTime**](DateTime.md) |  | [optional] 
**paidAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**paymentTransactions** | [**List&lt;PaymentInfoResponse&gt;**](PaymentInfoResponse.md) |  | [optional] 
**shippingInfo** | [**ShippingInfoResponse**](ShippingInfoResponse.md) |  | [optional] 
**recipientInfo** | [**RecipientInfoResponse**](RecipientInfoResponse.md) |  | [optional] 
**orderDetails** | [**List&lt;OrderDetailResponse&gt;**](OrderDetailResponse.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


