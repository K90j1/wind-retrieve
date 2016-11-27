# SwaggerClient::RefundInvoicePaymentsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_refund_invoice_payment**](RefundInvoicePaymentsApi.md#proxy_delete_refund_invoice_payment) | **DELETE** /object/refund-invoice-payment/{id} | CRUD: Delete RefundInvoicePayment
[**proxy_get_refund_invoice_payment**](RefundInvoicePaymentsApi.md#proxy_get_refund_invoice_payment) | **GET** /object/refund-invoice-payment/{id} | CRUD: Retrieve RefundInvoicePayment


# **proxy_delete_refund_invoice_payment**
> ProxyDeleteResponse proxy_delete_refund_invoice_payment(id)

CRUD: Delete RefundInvoicePayment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RefundInvoicePaymentsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete RefundInvoicePayment
  result = api_instance.proxy_delete_refund_invoice_payment(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefundInvoicePaymentsApi->proxy_delete_refund_invoice_payment: #{e}"
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



# **proxy_get_refund_invoice_payment**
> ProxyGetRefundInvoicePayment proxy_get_refund_invoice_payment(id, opts)

CRUD: Retrieve RefundInvoicePayment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RefundInvoicePaymentsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve RefundInvoicePayment
  result = api_instance.proxy_get_refund_invoice_payment(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefundInvoicePaymentsApi->proxy_get_refund_invoice_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetRefundInvoicePayment**](ProxyGetRefundInvoicePayment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



