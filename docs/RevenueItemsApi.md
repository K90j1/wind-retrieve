# SwaggerClient::RevenueItemsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_revenue_items_by_charge_revenue_event_number**](RevenueItemsApi.md#g_et_revenue_items_by_charge_revenue_event_number) | **GET** /revenue-items/revenue-events/{event-number} | Get revenue items by revenue event number
[**g_et_revenue_items_by_charge_revenue_summary_number**](RevenueItemsApi.md#g_et_revenue_items_by_charge_revenue_summary_number) | **GET** /revenue-items/charge-revenue-summaries/{crs-number} | Get revenue items by charge revenue summary number
[**g_et_revenue_items_by_revenue_schedule**](RevenueItemsApi.md#g_et_revenue_items_by_revenue_schedule) | **GET** /revenue-items/revenue-schedules/{rs-number} | Get revenue items by revenue schedule
[**p_ut_custom_fieldson_revenue_items_by_revenue_event**](RevenueItemsApi.md#p_ut_custom_fieldson_revenue_items_by_revenue_event) | **PUT** /revenue-items/revenue-events/{event-number} | Update custom fields on revenue items by revenue event number
[**p_ut_custom_fieldson_revenue_items_by_revenue_schedule**](RevenueItemsApi.md#p_ut_custom_fieldson_revenue_items_by_revenue_schedule) | **PUT** /revenue-items/revenue-schedules/{rs-number} | Update custom fields on revenue items by revenue schedule number


# **g_et_revenue_items_by_charge_revenue_event_number**
> GETRevenueItemsType g_et_revenue_items_by_charge_revenue_event_number(event_number)

Get revenue items by revenue event number

This REST API reference describes how to get the details of each revenue item in a revenue event by specifying the revenue event number. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueItemsApi.new

event_number = "event_number_example" # String | The number associated with the revenue event.


begin
  #Get revenue items by revenue event number
  result = api_instance.g_et_revenue_items_by_charge_revenue_event_number(event_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueItemsApi->g_et_revenue_items_by_charge_revenue_event_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_number** | **String**| The number associated with the revenue event. | 

### Return type

[**GETRevenueItemsType**](GETRevenueItemsType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_revenue_items_by_charge_revenue_summary_number**
> GETRevenueItemsType g_et_revenue_items_by_charge_revenue_summary_number(crs_number)

Get revenue items by charge revenue summary number

This REST API reference describes how to get the details for each revenue item in a charge revenue summary by specifying the charge revenue summary number. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueItemsApi.new

crs_number = "crs_number_example" # String | The charge revenue summary number.


begin
  #Get revenue items by charge revenue summary number
  result = api_instance.g_et_revenue_items_by_charge_revenue_summary_number(crs_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueItemsApi->g_et_revenue_items_by_charge_revenue_summary_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **crs_number** | **String**| The charge revenue summary number. | 

### Return type

[**GETRevenueItemsType**](GETRevenueItemsType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_revenue_items_by_revenue_schedule**
> GETRsRevenueItemsType g_et_revenue_items_by_revenue_schedule(rs_number)

Get revenue items by revenue schedule

This REST API reference describes how to get the details for each revenue items in a revenue schedule by specifying the revenue schedule number. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueItemsApi.new

rs_number = "rs_number_example" # String | Revenue schedule number. The revenue schedule number is always prefixed with \"RS\", for example, \"RS-00000001\".


begin
  #Get revenue items by revenue schedule
  result = api_instance.g_et_revenue_items_by_revenue_schedule(rs_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueItemsApi->g_et_revenue_items_by_revenue_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rs_number** | **String**| Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. | 

### Return type

[**GETRsRevenueItemsType**](GETRsRevenueItemsType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_custom_fieldson_revenue_items_by_revenue_event**
> CommonResponseType p_ut_custom_fieldson_revenue_items_by_revenue_event(event_number, request)

Update custom fields on revenue items by revenue event number

This REST API reference describes how to update custom fields on revenue items by specifying the revenue event number. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueItemsApi.new

event_number = "event_number_example" # String | The number associated with the revenue event.

request = SwaggerClient::PUTEventRIDetailType.new # PUTEventRIDetailType | 


begin
  #Update custom fields on revenue items by revenue event number
  result = api_instance.p_ut_custom_fieldson_revenue_items_by_revenue_event(event_number, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueItemsApi->p_ut_custom_fieldson_revenue_items_by_revenue_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_number** | **String**| The number associated with the revenue event. | 
 **request** | [**PUTEventRIDetailType**](PUTEventRIDetailType.md)|  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_custom_fieldson_revenue_items_by_revenue_schedule**
> CommonResponseType p_ut_custom_fieldson_revenue_items_by_revenue_schedule(rs_number, request)

Update custom fields on revenue items by revenue schedule number

This REST API reference describes how to update custom fields on revenue Items by specifying the revenue schedule number. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueItemsApi.new

rs_number = "rs_number_example" # String | Revenue schedule number. The revenue schedule number is always prefixed with \"RS\", for example, \"RS-00000001\".

request = SwaggerClient::PUTScheduleRIDetailType.new # PUTScheduleRIDetailType | 


begin
  #Update custom fields on revenue items by revenue schedule number
  result = api_instance.p_ut_custom_fieldson_revenue_items_by_revenue_schedule(rs_number, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueItemsApi->p_ut_custom_fieldson_revenue_items_by_revenue_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rs_number** | **String**| Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. | 
 **request** | [**PUTScheduleRIDetailType**](PUTScheduleRIDetailType.md)|  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



