# SwaggerClient::ImportsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_import**](ImportsApi.md#proxy_delete_import) | **DELETE** /object/import/{id} | CRUD: Delete Import
[**proxy_get_import**](ImportsApi.md#proxy_get_import) | **GET** /object/import/{id} | CRUD: Retrieve Import


# **proxy_delete_import**
> ProxyDeleteResponse proxy_delete_import(id)

CRUD: Delete Import



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ImportsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Import
  result = api_instance.proxy_delete_import(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ImportsApi->proxy_delete_import: #{e}"
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



# **proxy_get_import**
> ProxyGetImport proxy_get_import(id, opts)

CRUD: Retrieve Import



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ImportsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Import
  result = api_instance.proxy_get_import(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ImportsApi->proxy_get_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetImport**](ProxyGetImport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



