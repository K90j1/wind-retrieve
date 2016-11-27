# SwaggerClient::RevenueRulesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_revenue_recognition_rule_association**](RevenueRulesApi.md#g_et_revenue_recognition_rule_association) | **GET** /revenue-recognition-rules/subscription-charges/{charge-key} | Get the rule associated with a charge


# **g_et_revenue_recognition_rule_association**
> GETRevenueRecognitionRuleAssociationType g_et_revenue_recognition_rule_association(charge_key)

Get the rule associated with a charge

This REST API reference describes how to get the revenue recognition rule associated with a subscription charge by specifying the charge ID. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RevenueRulesApi.new

charge_key = "charge_key_example" # String | ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012.


begin
  #Get the rule associated with a charge
  result = api_instance.g_et_revenue_recognition_rule_association(charge_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RevenueRulesApi->g_et_revenue_recognition_rule_association: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_key** | **String**| ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012. | 

### Return type

[**GETRevenueRecognitionRuleAssociationType**](GETRevenueRecognitionRuleAssociationType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



