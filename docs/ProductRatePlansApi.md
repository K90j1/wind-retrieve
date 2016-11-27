# SwaggerClient::ProductRatePlansApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_product_rate_plan**](ProductRatePlansApi.md#proxy_delete_product_rate_plan) | **DELETE** /object/product-rate-plan/{id} | CRUD: Delete ProductRatePlan
[**proxy_get_product_rate_plan**](ProductRatePlansApi.md#proxy_get_product_rate_plan) | **GET** /object/product-rate-plan/{id} | CRUD: Retrieve ProductRatePlan
[**proxy_post_product_rate_plan**](ProductRatePlansApi.md#proxy_post_product_rate_plan) | **POST** /object/product-rate-plan | CRUD: Create ProductRatePlan
[**proxy_put_product_rate_plan**](ProductRatePlansApi.md#proxy_put_product_rate_plan) | **PUT** /object/product-rate-plan/{id} | CRUD: Update ProductRatePlan


# **proxy_delete_product_rate_plan**
> ProxyDeleteResponse proxy_delete_product_rate_plan(id)

CRUD: Delete ProductRatePlan



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductRatePlansApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete ProductRatePlan
  result = api_instance.proxy_delete_product_rate_plan(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductRatePlansApi->proxy_delete_product_rate_plan: #{e}"
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



# **proxy_get_product_rate_plan**
> ProxyGetProductRatePlan proxy_get_product_rate_plan(id, opts)

CRUD: Retrieve ProductRatePlan



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductRatePlansApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve ProductRatePlan
  result = api_instance.proxy_get_product_rate_plan(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductRatePlansApi->proxy_get_product_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetProductRatePlan**](ProxyGetProductRatePlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_product_rate_plan**
> ProxyCreateOrModifyResponse proxy_post_product_rate_plan(create_request)

CRUD: Create ProductRatePlan



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductRatePlansApi.new

create_request = SwaggerClient::ProxyCreateProductRatePlan.new # ProxyCreateProductRatePlan | 


begin
  #CRUD: Create ProductRatePlan
  result = api_instance.proxy_post_product_rate_plan(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductRatePlansApi->proxy_post_product_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateProductRatePlan**](ProxyCreateProductRatePlan.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_product_rate_plan**
> ProxyCreateOrModifyResponse proxy_put_product_rate_plan(id, modify_request)

CRUD: Update ProductRatePlan



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductRatePlansApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyProductRatePlan.new # ProxyModifyProductRatePlan | 


begin
  #CRUD: Update ProductRatePlan
  result = api_instance.proxy_put_product_rate_plan(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductRatePlansApi->proxy_put_product_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyProductRatePlan**](ProxyModifyProductRatePlan.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



