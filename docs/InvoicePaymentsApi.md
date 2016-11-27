# SwaggerClient::InvoicePaymentsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_invoice_payment**](InvoicePaymentsApi.md#proxy_delete_invoice_payment) | **DELETE** /object/invoice-payment/{id} | CRUD: Delete InvoicePayment
[**proxy_get_invoice_payment**](InvoicePaymentsApi.md#proxy_get_invoice_payment) | **GET** /object/invoice-payment/{id} | CRUD: Retrieve InvoicePayment
[**proxy_post_invoice_payment**](InvoicePaymentsApi.md#proxy_post_invoice_payment) | **POST** /object/invoice-payment | CRUD: Create InvoicePayment
[**proxy_put_invoice_payment**](InvoicePaymentsApi.md#proxy_put_invoice_payment) | **PUT** /object/invoice-payment/{id} | CRUD: Update InvoicePayment


# **proxy_delete_invoice_payment**
> ProxyDeleteResponse proxy_delete_invoice_payment(id)

CRUD: Delete InvoicePayment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete InvoicePayment
  result = api_instance.proxy_delete_invoice_payment(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->proxy_delete_invoice_payment: #{e}"
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



# **proxy_get_invoice_payment**
> ProxyGetInvoicePayment proxy_get_invoice_payment(id, opts)

CRUD: Retrieve InvoicePayment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve InvoicePayment
  result = api_instance.proxy_get_invoice_payment(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->proxy_get_invoice_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetInvoicePayment**](ProxyGetInvoicePayment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_invoice_payment**
> ProxyCreateOrModifyResponse proxy_post_invoice_payment(create_request)

CRUD: Create InvoicePayment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

create_request = SwaggerClient::ProxyCreateInvoicePayment.new # ProxyCreateInvoicePayment | 


begin
  #CRUD: Create InvoicePayment
  result = api_instance.proxy_post_invoice_payment(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->proxy_post_invoice_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateInvoicePayment**](ProxyCreateInvoicePayment.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_invoice_payment**
> ProxyCreateOrModifyResponse proxy_put_invoice_payment(id, modify_request)

CRUD: Update InvoicePayment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyInvoicePayment.new # ProxyModifyInvoicePayment | 


begin
  #CRUD: Update InvoicePayment
  result = api_instance.proxy_put_invoice_payment(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->proxy_put_invoice_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyInvoicePayment**](ProxyModifyInvoicePayment.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



