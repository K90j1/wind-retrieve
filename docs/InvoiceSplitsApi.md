# SwaggerClient::InvoiceSplitsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_invoice_split**](InvoiceSplitsApi.md#proxy_delete_invoice_split) | **DELETE** /object/invoice-split/{id} | CRUD: Delete InvoiceSplit
[**proxy_get_invoice_split**](InvoiceSplitsApi.md#proxy_get_invoice_split) | **GET** /object/invoice-split/{id} | CRUD: Retrieve InvoiceSplit


# **proxy_delete_invoice_split**
> ProxyDeleteResponse proxy_delete_invoice_split(id)

CRUD: Delete InvoiceSplit



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoiceSplitsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete InvoiceSplit
  result = api_instance.proxy_delete_invoice_split(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoiceSplitsApi->proxy_delete_invoice_split: #{e}"
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



# **proxy_get_invoice_split**
> ProxyGetInvoiceSplit proxy_get_invoice_split(id, opts)

CRUD: Retrieve InvoiceSplit



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoiceSplitsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve InvoiceSplit
  result = api_instance.proxy_get_invoice_split(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoiceSplitsApi->proxy_get_invoice_split: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetInvoiceSplit**](ProxyGetInvoiceSplit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



