# SwaggerClient::ProductRatePlanChargesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_product_rate_plan_charge**](ProductRatePlanChargesApi.md#proxy_delete_product_rate_plan_charge) | **DELETE** /object/product-rate-plan-charge/{id} | CRUD: Delete ProductRatePlanCharge
[**proxy_get_product_rate_plan_charge**](ProductRatePlanChargesApi.md#proxy_get_product_rate_plan_charge) | **GET** /object/product-rate-plan-charge/{id} | CRUD: Retrieve ProductRatePlanCharge


# **proxy_delete_product_rate_plan_charge**
> ProxyDeleteResponse proxy_delete_product_rate_plan_charge(id)

CRUD: Delete ProductRatePlanCharge



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductRatePlanChargesApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete ProductRatePlanCharge
  result = api_instance.proxy_delete_product_rate_plan_charge(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductRatePlanChargesApi->proxy_delete_product_rate_plan_charge: #{e}"
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



# **proxy_get_product_rate_plan_charge**
> ProxyGetProductRatePlanCharge proxy_get_product_rate_plan_charge(id, opts)

CRUD: Retrieve ProductRatePlanCharge



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductRatePlanChargesApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve ProductRatePlanCharge
  result = api_instance.proxy_get_product_rate_plan_charge(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductRatePlanChargesApi->proxy_get_product_rate_plan_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetProductRatePlanCharge**](ProxyGetProductRatePlanCharge.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



