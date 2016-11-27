# SwaggerClient::CommunicationProfilesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_communication_profile**](CommunicationProfilesApi.md#proxy_delete_communication_profile) | **DELETE** /object/communication-profile/{id} | CRUD: Delete CommunicationProfile
[**proxy_get_communication_profile**](CommunicationProfilesApi.md#proxy_get_communication_profile) | **GET** /object/communication-profile/{id} | CRUD: Retrieve CommunicationProfile


# **proxy_delete_communication_profile**
> ProxyDeleteResponse proxy_delete_communication_profile(id)

CRUD: Delete CommunicationProfile



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CommunicationProfilesApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete CommunicationProfile
  result = api_instance.proxy_delete_communication_profile(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommunicationProfilesApi->proxy_delete_communication_profile: #{e}"
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



# **proxy_get_communication_profile**
> ProxyGetCommunicationProfile proxy_get_communication_profile(id, opts)

CRUD: Retrieve CommunicationProfile



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CommunicationProfilesApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve CommunicationProfile
  result = api_instance.proxy_get_communication_profile(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommunicationProfilesApi->proxy_get_communication_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetCommunicationProfile**](ProxyGetCommunicationProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



