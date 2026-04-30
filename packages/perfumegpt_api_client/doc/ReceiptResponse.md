# perfumegpt_api_client.model.ReceiptResponse

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **String** |  | [optional] 
**code** | **String** |  | 
**orderDate** | [**DateTime**](DateTime.md) |  | [optional] 
**orderStatus** | **String** |  | 
**staffName** | **String** |  | 
**customerName** | **String** |  | 
**recipientPhone** | **String** |  | 
**recipientAddress** | **String** |  | 
**items** | [**List&lt;ReceiptItemDto&gt;**](ReceiptItemDto.md) |  | 
**subtotal** | **num** |  | [optional] 
**depositeAmount** | **num** |  | [optional] 
**remainingAmount** | **num** |  | [optional] 
**shippingFee** | **num** |  | [optional] 
**discount** | **num** |  | [optional] 
**tax** | **num** |  | [optional] 
**total** | **num** |  | [optional] 
**paymentMethod** | **String** |  | 
**note** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


