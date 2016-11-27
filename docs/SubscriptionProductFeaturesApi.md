# SwaggerClient::SubscriptionProductFeaturesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_subscription_product_feature**](SubscriptionProductFeaturesApi.md#proxy_delete_subscription_product_feature) | **DELETE** /object/subscription-product-feature/{id} | CRUD: Delete SubscriptionProductFeature
[**proxy_get_subscription_product_feature**](SubscriptionProductFeaturesApi.md#proxy_get_subscription_product_feature) | **GET** /object/subscription-product-feature/{id} | CRUD: Retrieve SubscriptionProductFeature


# **proxy_delete_subscription_product_feature**
> ProxyDeleteResponse proxy_delete_subscription_product_feature(id)

CRUD: Delete SubscriptionProductFeature



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionProductFeaturesApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete SubscriptionProductFeature
  result = api_instance.proxy_delete_subscription_product_feature(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionProductFeaturesApi->proxy_delete_subscription_product_feature: #{e}"
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



# **proxy_get_subscription_product_feature**
> ProxyGetSubscriptionProductFeature proxy_get_subscription_product_feature(id, opts)

CRUD: Retrieve SubscriptionProductFeature



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionProductFeaturesApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve SubscriptionProductFeature
  result = api_instance.proxy_get_subscription_product_feature(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionProductFeaturesApi->proxy_get_subscription_product_feature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetSubscriptionProductFeature**](ProxyGetSubscriptionProductFeature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



