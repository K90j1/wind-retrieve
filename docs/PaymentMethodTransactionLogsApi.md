# SwaggerClient::PaymentMethodTransactionLogsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_payment_method_transaction_log**](PaymentMethodTransactionLogsApi.md#proxy_delete_payment_method_transaction_log) | **DELETE** /object/payment-method-transaction-log/{id} | CRUD: Delete PaymentMethodTransactionLog
[**proxy_get_payment_method_transaction_log**](PaymentMethodTransactionLogsApi.md#proxy_get_payment_method_transaction_log) | **GET** /object/payment-method-transaction-log/{id} | CRUD: Retrieve PaymentMethodTransactionLog


# **proxy_delete_payment_method_transaction_log**
> ProxyDeleteResponse proxy_delete_payment_method_transaction_log(id)

CRUD: Delete PaymentMethodTransactionLog



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodTransactionLogsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete PaymentMethodTransactionLog
  result = api_instance.proxy_delete_payment_method_transaction_log(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodTransactionLogsApi->proxy_delete_payment_method_transaction_log: #{e}"
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



# **proxy_get_payment_method_transaction_log**
> ProxyGetPaymentMethodTransactionLog proxy_get_payment_method_transaction_log(id, opts)

CRUD: Retrieve PaymentMethodTransactionLog



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodTransactionLogsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve PaymentMethodTransactionLog
  result = api_instance.proxy_get_payment_method_transaction_log(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodTransactionLogsApi->proxy_get_payment_method_transaction_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetPaymentMethodTransactionLog**](ProxyGetPaymentMethodTransactionLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



