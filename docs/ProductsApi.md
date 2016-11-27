# SwaggerClient::ProductsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_product**](ProductsApi.md#proxy_delete_product) | **DELETE** /object/product/{id} | CRUD: Delete Product
[**proxy_get_product**](ProductsApi.md#proxy_get_product) | **GET** /object/product/{id} | CRUD: Retrieve Product
[**proxy_post_product**](ProductsApi.md#proxy_post_product) | **POST** /object/product | CRUD: Create Product
[**proxy_put_product**](ProductsApi.md#proxy_put_product) | **PUT** /object/product/{id} | CRUD: Update Product


# **proxy_delete_product**
> ProxyDeleteResponse proxy_delete_product(id)

CRUD: Delete Product



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Product
  result = api_instance.proxy_delete_product(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->proxy_delete_product: #{e}"
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



# **proxy_get_product**
> ProxyGetProduct proxy_get_product(id, opts)

CRUD: Retrieve Product



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Product
  result = api_instance.proxy_get_product(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->proxy_get_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetProduct**](ProxyGetProduct.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_product**
> ProxyCreateOrModifyResponse proxy_post_product(create_request)

CRUD: Create Product



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

create_request = SwaggerClient::ProxyCreateProduct.new # ProxyCreateProduct | 


begin
  #CRUD: Create Product
  result = api_instance.proxy_post_product(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->proxy_post_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateProduct**](ProxyCreateProduct.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_product**
> ProxyCreateOrModifyResponse proxy_put_product(id, modify_request)

CRUD: Update Product



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyProduct.new # ProxyModifyProduct | 


begin
  #CRUD: Update Product
  result = api_instance.proxy_put_product(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->proxy_put_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyProduct**](ProxyModifyProduct.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



