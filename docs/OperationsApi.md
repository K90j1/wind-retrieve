# SwaggerClient::OperationsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_transaction_invoice_payment**](OperationsApi.md#p_ost_transaction_invoice_payment) | **POST** /operations/invoice-collect | Invoice and collect


# **p_ost_transaction_invoice_payment**
> POSTInvoiceCollectResponseType p_ost_transaction_invoice_payment(request)

Invoice and collect

Generates invoices and collects payments for a specified account.  This method can generate invoices and collect payments on the invoices generated, or else simply collect payment on a specified existing invoice. The customer's default payment method is used, and the full amount due is collected. The operation depends on the parameters you specify  - To generate one or more new invoices for that customer and collect payment on the generated invoice(s), leave the **invoiceId** field empty.   - To collect payment on an existing invoice, specify the invoice ID.    The operation is atomic; if any part is unsuccessful, the entire operation is rolled back.   ## Notes  Timeouts may occur when using this method on an account that has an extremely high number of subscriptions. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OperationsApi.new

request = SwaggerClient::POSTInvoiceCollectType.new # POSTInvoiceCollectType | Customer account ID or account number.


begin
  #Invoice and collect
  result = api_instance.p_ost_transaction_invoice_payment(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OperationsApi->p_ost_transaction_invoice_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTInvoiceCollectType**](POSTInvoiceCollectType.md)| Customer account ID or account number. | 

### Return type

[**POSTInvoiceCollectResponseType**](POSTInvoiceCollectResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



