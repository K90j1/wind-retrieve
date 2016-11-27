# SwaggerClient::PaymentMethodSnapshotsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_payment_method_snapshot**](PaymentMethodSnapshotsApi.md#proxy_delete_payment_method_snapshot) | **DELETE** /object/payment-method-snapshot/{id} | CRUD: Delete PaymentMethodSnapshot
[**proxy_get_payment_method_snapshot**](PaymentMethodSnapshotsApi.md#proxy_get_payment_method_snapshot) | **GET** /object/payment-method-snapshot/{id} | CRUD: Retrieve PaymentMethodSnapshot


# **proxy_delete_payment_method_snapshot**
> ProxyDeleteResponse proxy_delete_payment_method_snapshot(id)

CRUD: Delete PaymentMethodSnapshot



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodSnapshotsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete PaymentMethodSnapshot
  result = api_instance.proxy_delete_payment_method_snapshot(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodSnapshotsApi->proxy_delete_payment_method_snapshot: #{e}"
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



# **proxy_get_payment_method_snapshot**
> ProxyGetPaymentMethodSnapshot proxy_get_payment_method_snapshot(id, opts)

CRUD: Retrieve PaymentMethodSnapshot



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodSnapshotsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve PaymentMethodSnapshot
  result = api_instance.proxy_get_payment_method_snapshot(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodSnapshotsApi->proxy_get_payment_method_snapshot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetPaymentMethodSnapshot**](ProxyGetPaymentMethodSnapshot.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



