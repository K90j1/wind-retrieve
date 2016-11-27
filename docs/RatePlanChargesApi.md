# SwaggerClient::RatePlanChargesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_rate_plan_charge**](RatePlanChargesApi.md#proxy_delete_rate_plan_charge) | **DELETE** /object/rate-plan-charge/{id} | CRUD: Delete RatePlanCharge
[**proxy_get_rate_plan_charge**](RatePlanChargesApi.md#proxy_get_rate_plan_charge) | **GET** /object/rate-plan-charge/{id} | CRUD: Retrieve RatePlanCharge


# **proxy_delete_rate_plan_charge**
> ProxyDeleteResponse proxy_delete_rate_plan_charge(id)

CRUD: Delete RatePlanCharge



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RatePlanChargesApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete RatePlanCharge
  result = api_instance.proxy_delete_rate_plan_charge(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RatePlanChargesApi->proxy_delete_rate_plan_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 

### Return type

[**ProxyDeleteResponse**](ProxyDeleteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_get_rate_plan_charge**
> ProxyGetRatePlanCharge proxy_get_rate_plan_charge(id, opts)

CRUD: Retrieve RatePlanCharge



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RatePlanChargesApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve RatePlanCharge
  result = api_instance.proxy_get_rate_plan_charge(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RatePlanChargesApi->proxy_get_rate_plan_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetRatePlanCharge**](ProxyGetRatePlanCharge.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



