# SwaggerClient::ConnectionsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_connections**](ConnectionsApi.md#p_ost_connections) | **POST** /connections | Establish connection to Zuora REST API service


# **p_ost_connections**
> CommonResponseType p_ost_connections(api_access_key_id, api_secret_access_key, content_type)

Establish connection to Zuora REST API service

Establishes a connection to the Zuora REST API service based on a valid user credentials.  This call authenticates the user and returns an API session cookie that's used to authorize subsequent calls to the REST API. A call to `connections` is a required first step before using the Zuora REST API to access data.  The credentials must belong to a user account that has permission to access the API service.  As noted elsewhere, it's strongly recommended that an account used for Zuora API activity is never used to log into the Zuora UI.  Once an account is used to log into the UI, it may be subject to periodic forced password changes, which may eventually lead to authentication failures when using the API. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConnectionsApi.new

api_access_key_id = "api_access_key_id_example" # String | Account username 

api_secret_access_key = "api_secret_access_key_example" # String | Account password 

content_type = "content_type_example" # String | Must be set to \"application/json\" 


begin
  #Establish connection to Zuora REST API service
  result = api_instance.p_ost_connections(api_access_key_id, api_secret_access_key, content_type)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectionsApi->p_ost_connections: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_access_key_id** | **String**| Account username  | 
 **api_secret_access_key** | **String**| Account password  | 
 **content_type** | **String**| Must be set to \&quot;application/json\&quot;  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



