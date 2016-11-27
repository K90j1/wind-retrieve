# SwaggerClient::RevenueEventsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_revenue_event_details**](RevenueEventsApi.md#g_et_revenue_event_details) | **GET** /revenue-events/revenue-schedules/{rs-number} | Get revenue events for a revenue schedule
[**g_et_revenue_event_details_0**](RevenueEventsApi.md#g_et_revenue_event_details_0) | **GET** /revenue-events/{event-number} | Get revenue event details


# **g_et_revenue_event_details**
> GETRevenueEventDetailsType g_et_revenue_event_details(rs_number)

Get revenue events for a revenue schedule

 This REST API reference describes how to get all revenue events in a revenue schedule by specifying the revenue schedule number. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueEventsApi.new

rs_number = "rs_number_example" # String | Revenue schedule number. The revenue schedule number is always prefixed with \"RS\", for example, \"RS-00000001\".


begin
  #Get revenue events for a revenue schedule
  result = api_instance.g_et_revenue_event_details(rs_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueEventsApi->g_et_revenue_event_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rs_number** | **String**| Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. | 

### Return type

[**GETRevenueEventDetailsType**](GETRevenueEventDetailsType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_revenue_event_details_0**
> GETRevenueEventDetailType g_et_revenue_event_details_0(event_number)

Get revenue event details

 This REST API reference describes how to get revenue event details by specifying the revenue event number. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueEventsApi.new

event_number = "event_number_example" # String | The number associated with the revenue event.


begin
  #Get revenue event details
  result = api_instance.g_et_revenue_event_details_0(event_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueEventsApi->g_et_revenue_event_details_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_number** | **String**| The number associated with the revenue event. | 

### Return type

[**GETRevenueEventDetailType**](GETRevenueEventDetailType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



