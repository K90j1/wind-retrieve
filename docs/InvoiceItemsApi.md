# SwaggerClient::InvoiceItemsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_invoice_item**](InvoiceItemsApi.md#proxy_delete_invoice_item) | **DELETE** /object/invoice-item/{id} | CRUD: Delete InvoiceItem
[**proxy_get_invoice_item**](InvoiceItemsApi.md#proxy_get_invoice_item) | **GET** /object/invoice-item/{id} | CRUD: Retrieve InvoiceItem


# **proxy_delete_invoice_item**
> ProxyDeleteResponse proxy_delete_invoice_item(id)

CRUD: Delete InvoiceItem



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoiceItemsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete InvoiceItem
  result = api_instance.proxy_delete_invoice_item(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoiceItemsApi->proxy_delete_invoice_item: #{e}"
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



# **proxy_get_invoice_item**
> ProxyGetInvoiceItem proxy_get_invoice_item(id, opts)

CRUD: Retrieve InvoiceItem



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoiceItemsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve InvoiceItem
  result = api_instance.proxy_get_invoice_item(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoiceItemsApi->proxy_get_invoice_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetInvoiceItem**](ProxyGetInvoiceItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



