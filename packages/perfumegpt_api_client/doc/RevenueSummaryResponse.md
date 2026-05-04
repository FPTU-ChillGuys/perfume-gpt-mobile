# perfumegpt_api_client.model.RevenueSummaryResponse

## Load the model package
```dart
import 'package:perfumegpt_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fromDate** | [**DateTime**](DateTime.md) |  | [optional] 
**toDate** | [**DateTime**](DateTime.md) |  | [optional] 
**grossRevenue** | **num** |  | [optional] 
**refundedAmount** | **num** |  | [optional] 
**netRevenue** | **num** |  | [optional] 
**successfulTransactionsCount** | **int** |  | [optional] 
**paidOrdersCount** | **int** |  | [optional] 
**paymentMethodDistribution** | [**List&lt;PaymentMethodDistributionResponse&gt;**](PaymentMethodDistributionResponse.md) |  | [optional] 
**aov** | **num** |  | [optional] 
**chartData** | [**List&lt;DailyRevenueItem&gt;**](DailyRevenueItem.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


