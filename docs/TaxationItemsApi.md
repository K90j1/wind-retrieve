# SwaggerClient::TaxationItemsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_taxation_item**](TaxationItemsApi.md#proxy_delete_taxation_item) | **DELETE** /object/taxation-item/{id} | CRUD: Delete TaxationItem
[**proxy_get_taxation_item**](TaxationItemsApi.md#proxy_get_taxation_item) | **GET** /object/taxation-item/{id} | CRUD: Retrieve TaxationItem
[**proxy_post_taxation_item**](TaxationItemsApi.md#proxy_post_taxation_item) | **POST** /object/taxation-item | CRUD: Create TaxationItem
[**proxy_put_taxation_item**](TaxationItemsApi.md#proxy_put_taxation_item) | **PUT** /object/taxation-item/{id} | CRUD: Update TaxationItem


# **proxy_delete_taxation_item**
> ProxyDeleteResponse proxy_delete_taxation_item(id)

CRUD: Delete TaxationItem



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TaxationItemsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete TaxationItem
  result = api_instance.proxy_delete_taxation_item(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxationItemsApi->proxy_delete_taxation_item: #{e}"
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



# **proxy_get_taxation_item**
> ProxyGetTaxationItem proxy_get_taxation_item(id, opts)

CRUD: Retrieve TaxationItem



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TaxationItemsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve TaxationItem
  result = api_instance.proxy_get_taxation_item(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxationItemsApi->proxy_get_taxation_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetTaxationItem**](ProxyGetTaxationItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_taxation_item**
> ProxyCreateOrModifyResponse proxy_post_taxation_item(create_request)

CRUD: Create TaxationItem



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TaxationItemsApi.new

create_request = SwaggerClient::ProxyCreateTaxationItem.new # ProxyCreateTaxationItem | 


begin
  #CRUD: Create TaxationItem
  result = api_instance.proxy_post_taxation_item(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxationItemsApi->proxy_post_taxation_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateTaxationItem**](ProxyCreateTaxationItem.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_taxation_item**
> ProxyCreateOrModifyResponse proxy_put_taxation_item(id, modify_request)

CRUD: Update TaxationItem



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TaxationItemsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyTaxationItem.new # ProxyModifyTaxationItem | 


begin
  #CRUD: Update TaxationItem
  result = api_instance.proxy_put_taxation_item(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxationItemsApi->proxy_put_taxation_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyTaxationItem**](ProxyModifyTaxationItem.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



