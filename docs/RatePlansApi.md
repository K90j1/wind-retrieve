# SwaggerClient::RatePlansApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_rate_plan**](RatePlansApi.md#proxy_delete_rate_plan) | **DELETE** /object/rate-plan/{id} | CRUD: Delete RatePlan
[**proxy_get_rate_plan**](RatePlansApi.md#proxy_get_rate_plan) | **GET** /object/rate-plan/{id} | CRUD: Retrieve RatePlan


# **proxy_delete_rate_plan**
> ProxyDeleteResponse proxy_delete_rate_plan(id)

CRUD: Delete RatePlan



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RatePlansApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete RatePlan
  result = api_instance.proxy_delete_rate_plan(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RatePlansApi->proxy_delete_rate_plan: #{e}"
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



# **proxy_get_rate_plan**
> ProxyGetRatePlan proxy_get_rate_plan(id, opts)

CRUD: Retrieve RatePlan



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RatePlansApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve RatePlan
  result = api_instance.proxy_get_rate_plan(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RatePlansApi->proxy_get_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetRatePlan**](ProxyGetRatePlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



