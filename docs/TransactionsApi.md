# SwaggerClient::TransactionsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_invoice**](TransactionsApi.md#g_et_invoice) | **GET** /transactions/invoices/accounts/{account-key} | Get invoices
[**g_et_payments**](TransactionsApi.md#g_et_payments) | **GET** /transactions/payments/accounts/{account-key} | Get payments


# **g_et_invoice**
> GETInvoiceFileWrapper g_et_invoice(account_key)

Get invoices

Retrieves invoices for a specified account.  Invoices are returned in reverse chronological order by **updatedDate**. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionsApi.new

account_key = "account_key_example" # String | Account number or account ID. 


begin
  #Get invoices
  result = api_instance.g_et_invoice(account_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionsApi->g_et_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_key** | **String**| Account number or account ID.  | 

### Return type

[**GETInvoiceFileWrapper**](GETInvoiceFileWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_payments**
> GETPaymentsType g_et_payments(account_key)

Get payments

Retrieves payments for a specified account. Payments are returned in reverse chronological order by **updatedDate**. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionsApi.new

account_key = "account_key_example" # String | Account number or account ID.


begin
  #Get payments
  result = api_instance.g_et_payments(account_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionsApi->g_et_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_key** | **String**| Account number or account ID. | 

### Return type

[**GETPaymentsType**](GETPaymentsType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



