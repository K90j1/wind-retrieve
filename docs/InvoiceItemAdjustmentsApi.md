# SwaggerClient::InvoiceItemAdjustmentsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_invoice_item_adjustment**](InvoiceItemAdjustmentsApi.md#proxy_delete_invoice_item_adjustment) | **DELETE** /object/invoice-item-adjustment/{id} | CRUD: Delete InvoiceItemAdjustment
[**proxy_get_invoice_item_adjustment**](InvoiceItemAdjustmentsApi.md#proxy_get_invoice_item_adjustment) | **GET** /object/invoice-item-adjustment/{id} | CRUD: Retrieve InvoiceItemAdjustment


# **proxy_delete_invoice_item_adjustment**
> ProxyDeleteResponse proxy_delete_invoice_item_adjustment(id)

CRUD: Delete InvoiceItemAdjustment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoiceItemAdjustmentsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete InvoiceItemAdjustment
  result = api_instance.proxy_delete_invoice_item_adjustment(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoiceItemAdjustmentsApi->proxy_delete_invoice_item_adjustment: #{e}"
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



# **proxy_get_invoice_item_adjustment**
> ProxyGetInvoiceItemAdjustment proxy_get_invoice_item_adjustment(id, opts)

CRUD: Retrieve InvoiceItemAdjustment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoiceItemAdjustmentsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve InvoiceItemAdjustment
  result = api_instance.proxy_get_invoice_item_adjustment(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoiceItemAdjustmentsApi->proxy_get_invoice_item_adjustment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetInvoiceItemAdjustment**](ProxyGetInvoiceItemAdjustment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



