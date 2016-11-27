# SwaggerClient::PaymentTransactionLogsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_payment_transaction_log**](PaymentTransactionLogsApi.md#proxy_delete_payment_transaction_log) | **DELETE** /object/payment-transaction-log/{id} | CRUD: Delete PaymentTransactionLog
[**proxy_get_payment_transaction_log**](PaymentTransactionLogsApi.md#proxy_get_payment_transaction_log) | **GET** /object/payment-transaction-log/{id} | CRUD: Retrieve PaymentTransactionLog


# **proxy_delete_payment_transaction_log**
> ProxyDeleteResponse proxy_delete_payment_transaction_log(id)

CRUD: Delete PaymentTransactionLog



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionLogsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete PaymentTransactionLog
  result = api_instance.proxy_delete_payment_transaction_log(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionLogsApi->proxy_delete_payment_transaction_log: #{e}"
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



# **proxy_get_payment_transaction_log**
> ProxyGetPaymentTransactionLog proxy_get_payment_transaction_log(id, opts)

CRUD: Retrieve PaymentTransactionLog



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionLogsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve PaymentTransactionLog
  result = api_instance.proxy_get_payment_transaction_log(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionLogsApi->proxy_get_payment_transaction_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetPaymentTransactionLog**](ProxyGetPaymentTransactionLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



