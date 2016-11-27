# SwaggerClient::SettingsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_revenue_start_date_setting**](SettingsApi.md#g_et_revenue_start_date_setting) | **GET** /settings/finance/revenue-automation-start-date | Get the revenue automation start date


# **g_et_revenue_start_date_setting**
> GETRevenueStartDateSettingType g_et_revenue_start_date_setting

Get the revenue automation start date

This REST API reference describes how to get the revenue automation start date. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SettingsApi.new

begin
  #Get the revenue automation start date
  result = api_instance.g_et_revenue_start_date_setting
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->g_et_revenue_start_date_setting: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GETRevenueStartDateSettingType**](GETRevenueStartDateSettingType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



