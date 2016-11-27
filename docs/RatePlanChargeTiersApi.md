# SwaggerClient::RatePlanChargeTiersApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_rate_plan_charge_tier**](RatePlanChargeTiersApi.md#proxy_delete_rate_plan_charge_tier) | **DELETE** /object/rate-plan-charge-tier/{id} | CRUD: Delete RatePlanChargeTier
[**proxy_get_rate_plan_charge_tier**](RatePlanChargeTiersApi.md#proxy_get_rate_plan_charge_tier) | **GET** /object/rate-plan-charge-tier/{id} | CRUD: Retrieve RatePlanChargeTier


# **proxy_delete_rate_plan_charge_tier**
> ProxyDeleteResponse proxy_delete_rate_plan_charge_tier(id)

CRUD: Delete RatePlanChargeTier



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RatePlanChargeTiersApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete RatePlanChargeTier
  result = api_instance.proxy_delete_rate_plan_charge_tier(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RatePlanChargeTiersApi->proxy_delete_rate_plan_charge_tier: #{e}"
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



# **proxy_get_rate_plan_charge_tier**
> ProxyGetRatePlanChargeTier proxy_get_rate_plan_charge_tier(id, opts)

CRUD: Retrieve RatePlanChargeTier



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RatePlanChargeTiersApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve RatePlanChargeTier
  result = api_instance.proxy_get_rate_plan_charge_tier(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RatePlanChargeTiersApi->proxy_get_rate_plan_charge_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetRatePlanChargeTier**](ProxyGetRatePlanChargeTier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



