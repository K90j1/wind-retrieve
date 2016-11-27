# SwaggerClient::FeaturesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_feature**](FeaturesApi.md#proxy_delete_feature) | **DELETE** /object/feature/{id} | CRUD: Delete Feature
[**proxy_get_feature**](FeaturesApi.md#proxy_get_feature) | **GET** /object/feature/{id} | CRUD: Retrieve Feature


# **proxy_delete_feature**
> ProxyDeleteResponse proxy_delete_feature(id)

CRUD: Delete Feature



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FeaturesApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Feature
  result = api_instance.proxy_delete_feature(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeaturesApi->proxy_delete_feature: #{e}"
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



# **proxy_get_feature**
> ProxyGetFeature proxy_get_feature(id, opts)

CRUD: Retrieve Feature



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FeaturesApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Feature
  result = api_instance.proxy_get_feature(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FeaturesApi->proxy_get_feature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetFeature**](ProxyGetFeature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



