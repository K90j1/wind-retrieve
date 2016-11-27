# SwaggerClient::ProductFeaturesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_product_feature**](ProductFeaturesApi.md#proxy_delete_product_feature) | **DELETE** /object/product-feature/{id} | CRUD: Delete ProductFeature
[**proxy_get_product_feature**](ProductFeaturesApi.md#proxy_get_product_feature) | **GET** /object/product-feature/{id} | CRUD: Retrieve ProductFeature


# **proxy_delete_product_feature**
> ProxyDeleteResponse proxy_delete_product_feature(id)

CRUD: Delete ProductFeature



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductFeaturesApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete ProductFeature
  result = api_instance.proxy_delete_product_feature(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductFeaturesApi->proxy_delete_product_feature: #{e}"
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



# **proxy_get_product_feature**
> ProxyGetProductFeature proxy_get_product_feature(id, opts)

CRUD: Retrieve ProductFeature



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductFeaturesApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve ProductFeature
  result = api_instance.proxy_get_product_feature(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductFeaturesApi->proxy_get_product_feature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetProductFeature**](ProxyGetProductFeature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



