# SwaggerClient::ExportsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_export**](ExportsApi.md#proxy_delete_export) | **DELETE** /object/export/{id} | CRUD: Delete Export
[**proxy_get_export**](ExportsApi.md#proxy_get_export) | **GET** /object/export/{id} | CRUD: Retrieve Export
[**proxy_post_export**](ExportsApi.md#proxy_post_export) | **POST** /object/export | CRUD: Create Export


# **proxy_delete_export**
> ProxyDeleteResponse proxy_delete_export(id)

CRUD: Delete Export



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExportsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Export
  result = api_instance.proxy_delete_export(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExportsApi->proxy_delete_export: #{e}"
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



# **proxy_get_export**
> ProxyGetExport proxy_get_export(id, opts)

CRUD: Retrieve Export



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExportsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Export
  result = api_instance.proxy_get_export(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExportsApi->proxy_get_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetExport**](ProxyGetExport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_export**
> ProxyCreateOrModifyResponse proxy_post_export(create_request)

CRUD: Create Export



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExportsApi.new

create_request = SwaggerClient::ProxyCreateExport.new # ProxyCreateExport | 


begin
  #CRUD: Create Export
  result = api_instance.proxy_post_export(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExportsApi->proxy_post_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateExport**](ProxyCreateExport.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



