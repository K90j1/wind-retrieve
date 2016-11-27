# SwaggerClient::HMACSignaturesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_osthmac_signature**](HMACSignaturesApi.md#p_osthmac_signature) | **POST** /hmac-signatures | Return HMAC signatures


# **p_osthmac_signature**
> POSTHMACSignatureResponseType p_osthmac_signature(request)

Return HMAC signatures

This REST API reference describes how to return unique signature and token values that used to process a [CORS enabled API call](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics/G_CORS_REST). 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::HMACSignaturesApi.new

request = SwaggerClient::POSTHMACSignatureType.new # POSTHMACSignatureType | 


begin
  #Return HMAC signatures
  result = api_instance.p_osthmac_signature(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HMACSignaturesApi->p_osthmac_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTHMACSignatureType**](POSTHMACSignatureType.md)|  | 

### Return type

[**POSTHMACSignatureResponseType**](POSTHMACSignatureResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



