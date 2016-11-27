# SwaggerClient::InvoicesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_invoice**](InvoicesApi.md#proxy_delete_invoice) | **DELETE** /object/invoice/{id} | CRUD: Delete Invoice
[**proxy_get_invoice**](InvoicesApi.md#proxy_get_invoice) | **GET** /object/invoice/{id} | CRUD: Retrieve Invoice
[**proxy_post_invoice**](InvoicesApi.md#proxy_post_invoice) | **POST** /object/invoice | CRUD: Create Invoice
[**proxy_put_invoice**](InvoicesApi.md#proxy_put_invoice) | **PUT** /object/invoice/{id} | CRUD: Update Invoice


# **proxy_delete_invoice**
> ProxyDeleteResponse proxy_delete_invoice(id)

CRUD: Delete Invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Invoice
  result = api_instance.proxy_delete_invoice(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->proxy_delete_invoice: #{e}"
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



# **proxy_get_invoice**
> ProxyGetInvoice proxy_get_invoice(id, opts)

CRUD: Retrieve Invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Invoice
  result = api_instance.proxy_get_invoice(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->proxy_get_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetInvoice**](ProxyGetInvoice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_invoice**
> ProxyCreateOrModifyResponse proxy_post_invoice(create_request)

CRUD: Create Invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

create_request = SwaggerClient::ProxyCreateInvoice.new # ProxyCreateInvoice | 


begin
  #CRUD: Create Invoice
  result = api_instance.proxy_post_invoice(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->proxy_post_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateInvoice**](ProxyCreateInvoice.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_invoice**
> ProxyCreateOrModifyResponse proxy_put_invoice(id, modify_request)

CRUD: Update Invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyInvoice.new # ProxyModifyInvoice | 


begin
  #CRUD: Update Invoice
  result = api_instance.proxy_put_invoice(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->proxy_put_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyInvoice**](ProxyModifyInvoice.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



