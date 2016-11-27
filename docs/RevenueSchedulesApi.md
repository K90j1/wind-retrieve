# SwaggerClient::RevenueSchedulesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_eleters**](RevenueSchedulesApi.md#d_eleters) | **DELETE** /revenue-schedules/{rs-number} | Delete revenue schedule
[**g_etr_sby_invoice_item**](RevenueSchedulesApi.md#g_etr_sby_invoice_item) | **GET** /revenue-schedules/invoice-items/{invoice-item-id} | Get a revenue schedule by invoice item ID
[**g_etr_sby_invoice_item_adjustment**](RevenueSchedulesApi.md#g_etr_sby_invoice_item_adjustment) | **GET** /revenue-schedules/invoice-item-adjustments/{invoice-item-adj-id}/ | Get a revenue schedule by invoice item adjustment
[**g_etrs_detail**](RevenueSchedulesApi.md#g_etrs_detail) | **GET** /revenue-schedules/{rs-number} | Get revenue schedule details
[**g_etrs_details_by_charge**](RevenueSchedulesApi.md#g_etrs_details_by_charge) | **GET** /revenue-schedules/subscription-charges/{charge-key} | Get revenue schedule by subscription charge
[**p_ost_revenue_schedule_by_charge_response**](RevenueSchedulesApi.md#p_ost_revenue_schedule_by_charge_response) | **POST** /revenue-schedules/subscription-charges/{charge-key} | Create a revenue schedule on a subscription charge
[**p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range**](RevenueSchedulesApi.md#p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range) | **POST** /revenue-schedules/invoice-item-adjustments/{invoice-item-adj-key}/distribute-revenue-with-date-range | Create a revenue schedule for an Invoice Item Adjustment (distribute by date range)
[**p_ostr_sfor_invoice_item_adjustment_manual_distribution**](RevenueSchedulesApi.md#p_ostr_sfor_invoice_item_adjustment_manual_distribution) | **POST** /revenue-schedules/invoice-item-adjustments/{invoice-item-adj-key} | Create a revenue schedule for an Invoice Item Adjustment (manual distribution)
[**p_ostr_sfor_invoice_item_distribute_by_date_range**](RevenueSchedulesApi.md#p_ostr_sfor_invoice_item_distribute_by_date_range) | **POST** /revenue-schedules/invoice-items/{invoice-item-id}/distribute-revenue-with-date-range | Create a revenue schedule for an Invoice Item (distribute by date range)
[**p_ostr_sfor_invoice_item_manual_distribution**](RevenueSchedulesApi.md#p_ostr_sfor_invoice_item_manual_distribution) | **POST** /revenue-schedules/invoice-items/{invoice-item-id} | Create a revenue schedule for an Invoice Item (manual distribution)
[**p_ut_revenue_across_ap**](RevenueSchedulesApi.md#p_ut_revenue_across_ap) | **PUT** /revenue-schedules/{rs-number}/distribute-revenue-across-accounting-periods | Distribute revenue across accounting periods
[**p_ut_revenue_by_recognition_startand_end_dates**](RevenueSchedulesApi.md#p_ut_revenue_by_recognition_startand_end_dates) | **PUT** /revenue-schedules/{rs-number}/distribute-revenue-with-date-range | Distribute revenue by recognition start and end dates
[**p_ut_revenue_specific_date**](RevenueSchedulesApi.md#p_ut_revenue_specific_date) | **PUT** /revenue-schedules/{rs-number}/distribute-revenue-on-specific-date | Distribute revenue on a specific date
[**p_utrs_basic_info**](RevenueSchedulesApi.md#p_utrs_basic_info) | **PUT** /revenue-schedules/{rs-number}/basic-information | Update revenue schedule basic information


# **d_eleters**
> CommonResponseType d_eleters(rs_number)

Delete revenue schedule

This REST API reference describes how to delete a revenue schedule by specifying its revenue schedule number ## Prerequisites You must have the Delete Custom Revenue Schedule [Z-Finance permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles#Z-Finance_Permissions). 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

rs_number = "rs_number_example" # String |  Revenue schedule number of the revenue schedule you want to delete, for example, RS-00000256. To be deleted, the revenue schedule: * Must be using a custom unlimited recognition rule. * Cannot have any revenue in a closed accounting period. * Cannot be included in a summary journal entry. * Cannot have a revenue schedule date in a closed accounting period. 


begin
  #Delete revenue schedule
  result = api_instance.d_eleters(rs_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->d_eleters: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rs_number** | **String**|  Revenue schedule number of the revenue schedule you want to delete, for example, RS-00000256. To be deleted, the revenue schedule: * Must be using a custom unlimited recognition rule. * Cannot have any revenue in a closed accounting period. * Cannot be included in a summary journal entry. * Cannot have a revenue schedule date in a closed accounting period.  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_etr_sby_invoice_item**
> GETRSDetailType g_etr_sby_invoice_item(invoice_item_id)

Get a revenue schedule by invoice item ID

This REST API reference describes how to get the details of a revenue schedule by specifying the invoice item ID.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

invoice_item_id = "invoice_item_id_example" # String | A valid Invoice Item ID.


begin
  #Get a revenue schedule by invoice item ID
  result = api_instance.g_etr_sby_invoice_item(invoice_item_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->g_etr_sby_invoice_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_item_id** | **String**| A valid Invoice Item ID. | 

### Return type

[**GETRSDetailType**](GETRSDetailType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_etr_sby_invoice_item_adjustment**
> GETRSDetailType g_etr_sby_invoice_item_adjustment(invoice_item_adj_id)

Get a revenue schedule by invoice item adjustment

This REST API reference describes how to get the details of a revenue schedule by specifying a valid invoice item adjustment identifier. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

invoice_item_adj_id = "invoice_item_adj_id_example" # String | ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72.


begin
  #Get a revenue schedule by invoice item adjustment
  result = api_instance.g_etr_sby_invoice_item_adjustment(invoice_item_adj_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->g_etr_sby_invoice_item_adjustment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_item_adj_id** | **String**| ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72. | 

### Return type

[**GETRSDetailType**](GETRSDetailType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_etrs_detail**
> GETRSDetailType g_etrs_detail(rs_number)

Get revenue schedule details

This REST API reference describes how to get the details of a revenue schedule by specifying the revenue schedule number. Request and response field descriptions and sample code are provided.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

rs_number = "rs_number_example" # String | Revenue schedule number. The revenue schedule number is always prefixed with \"RS\", for example, \"RS-00000001\". 


begin
  #Get revenue schedule details
  result = api_instance.g_etrs_detail(rs_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->g_etrs_detail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rs_number** | **String**| Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;.  | 

### Return type

[**GETRSDetailType**](GETRSDetailType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_etrs_details_by_charge**
> GETRSDetailsByChargeType g_etrs_details_by_charge(charge_key)

Get revenue schedule by subscription charge

This REST API reference describes how to get the revenue schedule details by specifying subscription charge ID. Request and response field descriptions and sample code are provided

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

charge_key = "charge_key_example" # String | ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012.


begin
  #Get revenue schedule by subscription charge
  result = api_instance.g_etrs_details_by_charge(charge_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->g_etrs_details_by_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_key** | **String**| ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012. | 

### Return type

[**GETRSDetailsByChargeType**](GETRSDetailsByChargeType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_revenue_schedule_by_charge_response**
> POSTRevenueScheduleByChargeResponseType p_ost_revenue_schedule_by_charge_response(charge_key, request)

Create a revenue schedule on a subscription charge

This REST API reference describes how to create a revenue schedule by specifying the subscription charge. This method is for custom unlimited revenue recognition only.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

charge_key = "charge_key_example" # String | ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012.

request = SwaggerClient::POSTRevenueScheduleByChargeType.new # POSTRevenueScheduleByChargeType | 


begin
  #Create a revenue schedule on a subscription charge
  result = api_instance.p_ost_revenue_schedule_by_charge_response(charge_key, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->p_ost_revenue_schedule_by_charge_response: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_key** | **String**| ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012. | 
 **request** | [**POSTRevenueScheduleByChargeType**](POSTRevenueScheduleByChargeType.md)|  | 

### Return type

[**POSTRevenueScheduleByChargeResponseType**](POSTRevenueScheduleByChargeResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range**
> POSTRevenueScheduleByTransactionResponseType p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range(invoice_item_adj_key, request)

Create a revenue schedule for an Invoice Item Adjustment (distribute by date range)

This REST API reference describes how to create a revenue schedule for an Invoice Item Adjustment and distribute the revenue by specifying the recognition start and end dates.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

invoice_item_adj_key = "invoice_item_adj_key_example" # String | ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72. If the specified Invoice Item Adjustment is already associated with a revenue schedule, the call will fail. 

request = SwaggerClient::POSTRevenueScheduleByDateRangeType.new # POSTRevenueScheduleByDateRangeType | 


begin
  #Create a revenue schedule for an Invoice Item Adjustment (distribute by date range)
  result = api_instance.p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range(invoice_item_adj_key, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_item_adj_key** | **String**| ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72. If the specified Invoice Item Adjustment is already associated with a revenue schedule, the call will fail.  | 
 **request** | [**POSTRevenueScheduleByDateRangeType**](POSTRevenueScheduleByDateRangeType.md)|  | 

### Return type

[**POSTRevenueScheduleByTransactionResponseType**](POSTRevenueScheduleByTransactionResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ostr_sfor_invoice_item_adjustment_manual_distribution**
> POSTRevenueScheduleByTransactionResponseType p_ostr_sfor_invoice_item_adjustment_manual_distribution(invoice_item_adj_key, request)

Create a revenue schedule for an Invoice Item Adjustment (manual distribution)

This REST API reference describes how to create a revenue schedule for an Invoice Item Adjustment and manually distribute the revenue.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

invoice_item_adj_key = "invoice_item_adj_key_example" # String | ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72. If the specified Invoice Item Adjustment is already associated with a revenue schedule, the call will fail. 

request = SwaggerClient::POSTRevenueScheduleByTransactionType.new # POSTRevenueScheduleByTransactionType | 


begin
  #Create a revenue schedule for an Invoice Item Adjustment (manual distribution)
  result = api_instance.p_ostr_sfor_invoice_item_adjustment_manual_distribution(invoice_item_adj_key, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->p_ostr_sfor_invoice_item_adjustment_manual_distribution: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_item_adj_key** | **String**| ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72. If the specified Invoice Item Adjustment is already associated with a revenue schedule, the call will fail.  | 
 **request** | [**POSTRevenueScheduleByTransactionType**](POSTRevenueScheduleByTransactionType.md)|  | 

### Return type

[**POSTRevenueScheduleByTransactionResponseType**](POSTRevenueScheduleByTransactionResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ostr_sfor_invoice_item_distribute_by_date_range**
> POSTRevenueScheduleByTransactionResponseType p_ostr_sfor_invoice_item_distribute_by_date_range(invoice_item_id, request)

Create a revenue schedule for an Invoice Item (distribute by date range)

This REST API reference describes how to create a revenue schedule for an Invoice Item and distribute the revenue by specifying the recognition start and end dates.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

invoice_item_id = "invoice_item_id_example" # String | ID of the Invoice Item, for example, e20b07fd416dcfcf0141c81164fd0a75. If the specified Invoice Item is already associated with a revenue schedule, the call will fail. 

request = SwaggerClient::POSTRevenueScheduleByDateRangeType.new # POSTRevenueScheduleByDateRangeType | 


begin
  #Create a revenue schedule for an Invoice Item (distribute by date range)
  result = api_instance.p_ostr_sfor_invoice_item_distribute_by_date_range(invoice_item_id, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->p_ostr_sfor_invoice_item_distribute_by_date_range: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_item_id** | **String**| ID of the Invoice Item, for example, e20b07fd416dcfcf0141c81164fd0a75. If the specified Invoice Item is already associated with a revenue schedule, the call will fail.  | 
 **request** | [**POSTRevenueScheduleByDateRangeType**](POSTRevenueScheduleByDateRangeType.md)|  | 

### Return type

[**POSTRevenueScheduleByTransactionResponseType**](POSTRevenueScheduleByTransactionResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ostr_sfor_invoice_item_manual_distribution**
> POSTRevenueScheduleByTransactionResponseType p_ostr_sfor_invoice_item_manual_distribution(invoice_item_id, request)

Create a revenue schedule for an Invoice Item (manual distribution)

This REST API reference describes how to create a revenue schedule for an Invoice Item and manually distribute the revenue.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

invoice_item_id = "invoice_item_id_example" # String | ID of the Invoice Item, for example, e20b07fd416dcfcf0141c81164fd0a75. If the specified Invoice Item is already associated with a revenue schedule, the call will fail. 

request = SwaggerClient::POSTRevenueScheduleByTransactionType.new # POSTRevenueScheduleByTransactionType | 


begin
  #Create a revenue schedule for an Invoice Item (manual distribution)
  result = api_instance.p_ostr_sfor_invoice_item_manual_distribution(invoice_item_id, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->p_ostr_sfor_invoice_item_manual_distribution: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_item_id** | **String**| ID of the Invoice Item, for example, e20b07fd416dcfcf0141c81164fd0a75. If the specified Invoice Item is already associated with a revenue schedule, the call will fail.  | 
 **request** | [**POSTRevenueScheduleByTransactionType**](POSTRevenueScheduleByTransactionType.md)|  | 

### Return type

[**POSTRevenueScheduleByTransactionResponseType**](POSTRevenueScheduleByTransactionResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_revenue_across_ap**
> PUTRevenueScheduleResponseType p_ut_revenue_across_ap(rs_number, request)

Distribute revenue across accounting periods

This REST API reference describes how to distribute revenue by specifying the revenue schedule number. Request and response field descriptions and sample code are provided.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

rs_number = "rs_number_example" # String | Revenue schedule number. The revenue schedule number is always prefixed with \"RS\", for example, \"RS-00000001\". 

request = SwaggerClient::PUTAllocateManuallyType.new # PUTAllocateManuallyType | 


begin
  #Distribute revenue across accounting periods
  result = api_instance.p_ut_revenue_across_ap(rs_number, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->p_ut_revenue_across_ap: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rs_number** | **String**| Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;.  | 
 **request** | [**PUTAllocateManuallyType**](PUTAllocateManuallyType.md)|  | 

### Return type

[**PUTRevenueScheduleResponseType**](PUTRevenueScheduleResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_revenue_by_recognition_startand_end_dates**
> PUTRevenueScheduleResponseType p_ut_revenue_by_recognition_startand_end_dates(rs_number, request)

Distribute revenue by recognition start and end dates

This REST API reference describes how to distribute revenue by specifying the recognition start and end dates. Request and response field descriptions and sample code are provided.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

rs_number = "rs_number_example" # String | Revenue schedule number. Specify the revenue schedule whose revenue you want to distribute.    The revenue schedule number is always prefixed with \"RS\", for example, \"RS-00000001\". 

request = SwaggerClient::PUTRSTermType.new # PUTRSTermType | 


begin
  #Distribute revenue by recognition start and end dates
  result = api_instance.p_ut_revenue_by_recognition_startand_end_dates(rs_number, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->p_ut_revenue_by_recognition_startand_end_dates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rs_number** | **String**| Revenue schedule number. Specify the revenue schedule whose revenue you want to distribute.    The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;.  | 
 **request** | [**PUTRSTermType**](PUTRSTermType.md)|  | 

### Return type

[**PUTRevenueScheduleResponseType**](PUTRevenueScheduleResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_revenue_specific_date**
> PUTRevenueScheduleResponseType p_ut_revenue_specific_date(rs_number, request)

Distribute revenue on a specific date

This REST API reference describes how to distribute revenue on a specific recognition date. Request and response field descriptions and sample code are provided.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

rs_number = "rs_number_example" # String | Revenue schedule number. The revenue schedule number is always prefixed with \"RS\", for example, \"RS-00000001\". 

request = SwaggerClient::PUTSpecificDateAllocationType.new # PUTSpecificDateAllocationType | 


begin
  #Distribute revenue on a specific date
  result = api_instance.p_ut_revenue_specific_date(rs_number, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->p_ut_revenue_specific_date: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rs_number** | **String**| Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;.  | 
 **request** | [**PUTSpecificDateAllocationType**](PUTSpecificDateAllocationType.md)|  | 

### Return type

[**PUTRevenueScheduleResponseType**](PUTRevenueScheduleResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_utrs_basic_info**
> CommonResponseType p_utrs_basic_info(rs_number, request)

Update revenue schedule basic information

This REST API reference describes how to get basic information of a revenue schedule by specifying the revenue schedule number. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueSchedulesApi.new

rs_number = "rs_number_example" # String | Revenue schedule number. The revenue schedule number is always prefixed with \"RS\", for example, \"RS-00000001\". 

request = SwaggerClient::PUTRSBasicInfoType.new # PUTRSBasicInfoType | 


begin
  #Update revenue schedule basic information
  result = api_instance.p_utrs_basic_info(rs_number, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueSchedulesApi->p_utrs_basic_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rs_number** | **String**| Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;.  | 
 **request** | [**PUTRSBasicInfoType**](PUTRSBasicInfoType.md)|  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



