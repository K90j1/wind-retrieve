# SwaggerClient::ChargeRevenueSummariesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_etcrs_by_charge_id**](ChargeRevenueSummariesApi.md#g_etcrs_by_charge_id) | **GET** /charge-revenue-summaries/subscription-charges/{charge-key} | Get charge summary details by charge ID
[**g_etcrs_by_crs_number**](ChargeRevenueSummariesApi.md#g_etcrs_by_crs_number) | **GET** /charge-revenue-summaries/{crs-number} | Get charge summary details by CRS number


# **g_etcrs_by_charge_id**
> GETChargeRSDetailType g_etcrs_by_charge_id(charge_key)

Get charge summary details by charge ID

This REST API reference describes how to retrieve the details of a charge revenue summary by specifying the subscription charge ID. This response retrieves all revenue items associated with a charge revenue summary. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ChargeRevenueSummariesApi.new

charge_key = "charge_key_example" # String | ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012. 


begin
  #Get charge summary details by charge ID
  result = api_instance.g_etcrs_by_charge_id(charge_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ChargeRevenueSummariesApi->g_etcrs_by_charge_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_key** | **String**| ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012.  | 

### Return type

[**GETChargeRSDetailType**](GETChargeRSDetailType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_etcrs_by_crs_number**
> GETChargeRSDetailType g_etcrs_by_crs_number(crs_number)

Get charge summary details by CRS number

This REST API reference describes how to retrieve the details of a charge revenue summary by specifying the charge revenue summary number. The response includes all revenue items associated with the charge revenue summary. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ChargeRevenueSummariesApi.new

crs_number = "crs_number_example" # String | The charge revenue summary number. 


begin
  #Get charge summary details by CRS number
  result = api_instance.g_etcrs_by_crs_number(crs_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ChargeRevenueSummariesApi->g_etcrs_by_crs_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **crs_number** | **String**| The charge revenue summary number.  | 

### Return type

[**GETChargeRSDetailType**](GETChargeRSDetailType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



