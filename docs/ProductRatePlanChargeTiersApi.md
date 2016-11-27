# SwaggerClient::ProductRatePlanChargeTiersApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_product_rate_plan_charge_tier**](ProductRatePlanChargeTiersApi.md#proxy_delete_product_rate_plan_charge_tier) | **DELETE** /object/product-rate-plan-charge-tier/{id} | CRUD: Delete ProductRatePlanChargeTier
[**proxy_get_product_rate_plan_charge_tier**](ProductRatePlanChargeTiersApi.md#proxy_get_product_rate_plan_charge_tier) | **GET** /object/product-rate-plan-charge-tier/{id} | CRUD: Retrieve ProductRatePlanChargeTier


# **proxy_delete_product_rate_plan_charge_tier**
> ProxyDeleteResponse proxy_delete_product_rate_plan_charge_tier(id)

CRUD: Delete ProductRatePlanChargeTier



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductRatePlanChargeTiersApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete ProductRatePlanChargeTier
  result = api_instance.proxy_delete_product_rate_plan_charge_tier(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductRatePlanChargeTiersApi->proxy_delete_product_rate_plan_charge_tier: #{e}"
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



# **proxy_get_product_rate_plan_charge_tier**
> ProxyGetProductRatePlanChargeTier proxy_get_product_rate_plan_charge_tier(id, opts)

CRUD: Retrieve ProductRatePlanChargeTier



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductRatePlanChargeTiersApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve ProductRatePlanChargeTier
  result = api_instance.proxy_get_product_rate_plan_charge_tier(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductRatePlanChargeTiersApi->proxy_get_product_rate_plan_charge_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetProductRatePlanChargeTier**](ProxyGetProductRatePlanChargeTier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



