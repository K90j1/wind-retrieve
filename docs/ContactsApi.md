# SwaggerClient::ContactsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_contact**](ContactsApi.md#proxy_delete_contact) | **DELETE** /object/contact/{id} | CRUD: Delete Contact
[**proxy_get_contact**](ContactsApi.md#proxy_get_contact) | **GET** /object/contact/{id} | CRUD: Retrieve Contact
[**proxy_post_contact**](ContactsApi.md#proxy_post_contact) | **POST** /object/contact | CRUD: Create Contact
[**proxy_put_contact**](ContactsApi.md#proxy_put_contact) | **PUT** /object/contact/{id} | CRUD: Update Contact


# **proxy_delete_contact**
> ProxyDeleteResponse proxy_delete_contact(id)

CRUD: Delete Contact



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Contact
  result = api_instance.proxy_delete_contact(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->proxy_delete_contact: #{e}"
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



# **proxy_get_contact**
> ProxyGetContact proxy_get_contact(id, opts)

CRUD: Retrieve Contact



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Contact
  result = api_instance.proxy_get_contact(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->proxy_get_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetContact**](ProxyGetContact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_contact**
> ProxyCreateOrModifyResponse proxy_post_contact(create_request)

CRUD: Create Contact



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

create_request = SwaggerClient::ProxyCreateContact.new # ProxyCreateContact | 


begin
  #CRUD: Create Contact
  result = api_instance.proxy_post_contact(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->proxy_post_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateContact**](ProxyCreateContact.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_contact**
> ProxyCreateOrModifyResponse proxy_put_contact(id, modify_request)

CRUD: Update Contact



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyContact.new # ProxyModifyContact | 


begin
  #CRUD: Update Contact
  result = api_instance.proxy_put_contact(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->proxy_put_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyContact**](ProxyModifyContact.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



