# SwaggerClient::InvoiceSplitItemsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_invoice_split_item**](InvoiceSplitItemsApi.md#proxy_delete_invoice_split_item) | **DELETE** /object/invoice-split-item/{id} | CRUD: Delete InvoiceSplitItem
[**proxy_get_invoice_split_item**](InvoiceSplitItemsApi.md#proxy_get_invoice_split_item) | **GET** /object/invoice-split-item/{id} | CRUD: Retrieve InvoiceSplitItem


# **proxy_delete_invoice_split_item**
> ProxyDeleteResponse proxy_delete_invoice_split_item(id)

CRUD: Delete InvoiceSplitItem



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoiceSplitItemsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete InvoiceSplitItem
  result = api_instance.proxy_delete_invoice_split_item(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoiceSplitItemsApi->proxy_delete_invoice_split_item: #{e}"
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



# **proxy_get_invoice_split_item**
> ProxyGetInvoiceSplitItem proxy_get_invoice_split_item(id, opts)

CRUD: Retrieve InvoiceSplitItem



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoiceSplitItemsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve InvoiceSplitItem
  result = api_instance.proxy_get_invoice_split_item(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoiceSplitItemsApi->proxy_get_invoice_split_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetInvoiceSplitItem**](ProxyGetInvoiceSplitItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



