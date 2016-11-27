# SwaggerClient::PaymentsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_payment**](PaymentsApi.md#proxy_delete_payment) | **DELETE** /object/payment/{id} | CRUD: Delete Payment
[**proxy_get_payment**](PaymentsApi.md#proxy_get_payment) | **GET** /object/payment/{id} | CRUD: Retrieve Payment
[**proxy_post_payment**](PaymentsApi.md#proxy_post_payment) | **POST** /object/payment | CRUD: Create Payment
[**proxy_put_payment**](PaymentsApi.md#proxy_put_payment) | **PUT** /object/payment/{id} | CRUD: Update Payment


# **proxy_delete_payment**
> ProxyDeleteResponse proxy_delete_payment(id)

CRUD: Delete Payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Payment
  result = api_instance.proxy_delete_payment(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->proxy_delete_payment: #{e}"
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



# **proxy_get_payment**
> ProxyGetPayment proxy_get_payment(id, opts)

CRUD: Retrieve Payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Payment
  result = api_instance.proxy_get_payment(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->proxy_get_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetPayment**](ProxyGetPayment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_payment**
> ProxyCreateOrModifyResponse proxy_post_payment(create_request)

CRUD: Create Payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

create_request = SwaggerClient::ProxyCreatePayment.new # ProxyCreatePayment | 


begin
  #CRUD: Create Payment
  result = api_instance.proxy_post_payment(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->proxy_post_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreatePayment**](ProxyCreatePayment.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_payment**
> ProxyCreateOrModifyResponse proxy_put_payment(id, modify_request)

CRUD: Update Payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyPayment.new # ProxyModifyPayment | 


begin
  #CRUD: Update Payment
  result = api_instance.proxy_put_payment(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->proxy_put_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyPayment**](ProxyModifyPayment.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



