# SwaggerClient::RefundTransactionLogsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_refund_transaction_log**](RefundTransactionLogsApi.md#proxy_delete_refund_transaction_log) | **DELETE** /object/refund-transaction-log/{id} | CRUD: Delete RefundTransactionLog
[**proxy_get_refund_transaction_log**](RefundTransactionLogsApi.md#proxy_get_refund_transaction_log) | **GET** /object/refund-transaction-log/{id} | CRUD: Retrieve RefundTransactionLog


# **proxy_delete_refund_transaction_log**
> ProxyDeleteResponse proxy_delete_refund_transaction_log(id)

CRUD: Delete RefundTransactionLog



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RefundTransactionLogsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete RefundTransactionLog
  result = api_instance.proxy_delete_refund_transaction_log(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefundTransactionLogsApi->proxy_delete_refund_transaction_log: #{e}"
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



# **proxy_get_refund_transaction_log**
> ProxyGetRefundTransactionLog proxy_get_refund_transaction_log(id, opts)

CRUD: Retrieve RefundTransactionLog



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RefundTransactionLogsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve RefundTransactionLog
  result = api_instance.proxy_get_refund_transaction_log(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefundTransactionLogsApi->proxy_get_refund_transaction_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetRefundTransactionLog**](ProxyGetRefundTransactionLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



