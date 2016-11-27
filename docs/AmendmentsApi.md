# SwaggerClient::AmendmentsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_amendment**](AmendmentsApi.md#g_et_amendment) | **GET** /amendments/{amendment-key} | Get amendments by key
[**g_et_amendments_by_subscription_id**](AmendmentsApi.md#g_et_amendments_by_subscription_id) | **GET** /amendments/subscriptions/{subscription-id} | Get amendments by subscription ID
[**proxy_delete_amendment**](AmendmentsApi.md#proxy_delete_amendment) | **DELETE** /object/amendment/{id} | CRUD: Delete Amendment
[**proxy_get_amendment**](AmendmentsApi.md#proxy_get_amendment) | **GET** /object/amendment/{id} | CRUD: Retrieve Amendment
[**proxy_post_amendment**](AmendmentsApi.md#proxy_post_amendment) | **POST** /object/amendment | CRUD: Create Amendment
[**proxy_put_amendment**](AmendmentsApi.md#proxy_put_amendment) | **PUT** /object/amendment/{id} | CRUD: Update Amendment


# **g_et_amendment**
> GETAmendmentType g_et_amendment(amendment_key)

Get amendments by key

Retrieves detailed information about the specified subscription amendment.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AmendmentsApi.new

amendment_key = "amendment_key_example" # String | Can be the amendment ID or the amendment code.


begin
  #Get amendments by key
  result = api_instance.g_et_amendment(amendment_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AmendmentsApi->g_et_amendment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amendment_key** | **String**| Can be the amendment ID or the amendment code. | 

### Return type

[**GETAmendmentType**](GETAmendmentType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_amendments_by_subscription_id**
> GETAmendmentType g_et_amendments_by_subscription_id(subscription_id)

Get amendments by subscription ID

Retrieves detailed information about the amendment with the specified subscription.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AmendmentsApi.new

subscription_id = "subscription_id_example" # String | The ID of the subscription whose amendment changes you want to retrieve.


begin
  #Get amendments by subscription ID
  result = api_instance.g_et_amendments_by_subscription_id(subscription_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AmendmentsApi->g_et_amendments_by_subscription_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The ID of the subscription whose amendment changes you want to retrieve. | 

### Return type

[**GETAmendmentType**](GETAmendmentType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_delete_amendment**
> ProxyDeleteResponse proxy_delete_amendment(id)

CRUD: Delete Amendment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AmendmentsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Amendment
  result = api_instance.proxy_delete_amendment(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AmendmentsApi->proxy_delete_amendment: #{e}"
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



# **proxy_get_amendment**
> ProxyGetAmendment proxy_get_amendment(id, opts)

CRUD: Retrieve Amendment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AmendmentsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Amendment
  result = api_instance.proxy_get_amendment(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AmendmentsApi->proxy_get_amendment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetAmendment**](ProxyGetAmendment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_amendment**
> ProxyCreateOrModifyResponse proxy_post_amendment(create_request)

CRUD: Create Amendment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AmendmentsApi.new

create_request = SwaggerClient::ProxyCreateAmendment.new # ProxyCreateAmendment | 


begin
  #CRUD: Create Amendment
  result = api_instance.proxy_post_amendment(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AmendmentsApi->proxy_post_amendment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateAmendment**](ProxyCreateAmendment.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_amendment**
> ProxyCreateOrModifyResponse proxy_put_amendment(id, modify_request)

CRUD: Update Amendment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AmendmentsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyAmendment.new # ProxyModifyAmendment | 


begin
  #CRUD: Update Amendment
  result = api_instance.proxy_put_amendment(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AmendmentsApi->proxy_put_amendment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyAmendment**](ProxyModifyAmendment.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



