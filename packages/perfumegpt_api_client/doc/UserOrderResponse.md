# perfumegpt_api_client.model.UserOrderResponse

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**code** | **String** |  | 
**type** | [**OrderType**](OrderType.md) |  | [optional] 
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**isReturnable** | **bool** |  | [optional] 
**paymentStatus** | [**PaymentStatus**](PaymentStatus.md) |  | [optional] 
**totalAmount** | **num** |  | [optional] 
**requiredDepositAmount** | **num** |  | [optional] 
**depositAmount** | **num** |  | [optional] 
**paidAmount** | **num** |  | [optional] 
**remainingAmount** | **num** |  | [optional] 
**subTotal** | **num** |  | [optional] 
**shippingFee** | **num** |  | [optional] 
**voucherCode** | **String** |  | [optional] 
**voucherType** | [**VoucherType**](VoucherType.md) |  | [optional] 
**voucherDiscountTotal** | **num** |  | [optional] 
**paymentExpiresAt** | [**DateTime**](DateTime.md) |  | [optional] 
**paidAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**paymentTransactions** | [**List&lt;PaymentInfoResponse&gt;**](PaymentInfoResponse.md) |  | [optional] 
**shippingInfo** | [**ShippingInfoResponse**](ShippingInfoResponse.md) |  | [optional] 
**recipientInfo** | [**RecipientInfoResponse**](RecipientInfoResponse.md) |  | [optional] 
**orderDetails** | [**List&lt;OrderDetailResponse&gt;**](OrderDetailResponse.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


