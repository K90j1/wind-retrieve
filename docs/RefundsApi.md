# SwaggerClient::RefundsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_refund**](RefundsApi.md#proxy_delete_refund) | **DELETE** /object/refund/{id} | CRUD: Delete Refund
[**proxy_get_refund**](RefundsApi.md#proxy_get_refund) | **GET** /object/refund/{id} | CRUD: Retrieve Refund
[**proxy_post_refund**](RefundsApi.md#proxy_post_refund) | **POST** /object/refund | CRUD: Create Refund
[**proxy_put_refund**](RefundsApi.md#proxy_put_refund) | **PUT** /object/refund/{id} | CRUD: Update Refund


# **proxy_delete_refund**
> ProxyDeleteResponse proxy_delete_refund(id)

CRUD: Delete Refund



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RefundsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Refund
  result = api_instance.proxy_delete_refund(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefundsApi->proxy_delete_refund: #{e}"
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



# **proxy_get_refund**
> ProxyGetRefund proxy_get_refund(id, opts)

CRUD: Retrieve Refund



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RefundsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Refund
  result = api_instance.proxy_get_refund(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefundsApi->proxy_get_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetRefund**](ProxyGetRefund.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_refund**
> ProxyCreateOrModifyResponse proxy_post_refund(create_request)

CRUD: Create Refund



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RefundsApi.new

create_request = SwaggerClient::ProxyCreateRefund.new # ProxyCreateRefund | 


begin
  #CRUD: Create Refund
  result = api_instance.proxy_post_refund(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefundsApi->proxy_post_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateRefund**](ProxyCreateRefund.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_refund**
> ProxyCreateOrModifyResponse proxy_put_refund(id, modify_request)

CRUD: Update Refund



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RefundsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyRefund.new # ProxyModifyRefund | 


begin
  #CRUD: Update Refund
  result = api_instance.proxy_put_refund(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefundsApi->proxy_put_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyRefund**](ProxyModifyRefund.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



