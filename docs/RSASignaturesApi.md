# SwaggerClient::RSASignaturesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_decrypt_response**](RSASignaturesApi.md#p_ost_decrypt_response) | **POST** /rsa-signatures/decrypt | Decrypt RSA signature
[**p_ostrsa_signature**](RSASignaturesApi.md#p_ostrsa_signature) | **POST** /rsa-signatures | Generate RSA signature


# **p_ost_decrypt_response**
> POSTDecryptResponseType p_ost_decrypt_response(request)

Decrypt RSA signature

 The REST API used in Payment Pages 2.0 are CORS (Cross-Origin Resource Sharing) enabled and therefore requires a digital signature. You use rsa_signatures to generate the required digital signature and token for a Payment Pages 2.0 form, and then you use the decrypt REST service to decrypt the signature to validate the signature and key.  This REST service should be used only when you implement Payment Pages 2.0.  

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RSASignaturesApi.new

request = SwaggerClient::POSTDecryptionType.new # POSTDecryptionType | 


begin
  #Decrypt RSA signature
  result = api_instance.p_ost_decrypt_response(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RSASignaturesApi->p_ost_decrypt_response: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTDecryptionType**](POSTDecryptionType.md)|  | 

### Return type

[**POSTDecryptResponseType**](POSTDecryptResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ostrsa_signature**
> POSTRSASignatureResponseType p_ostrsa_signature(request)

Generate RSA signature

 The REST API used in Payment Pages 2.0 are CORS (Cross-Origin Resource Sharing) enabled and therefore requires a digital signature. The POST rsa_signatures call generates and returns the required digital signature and token for a Payment Pages 2.0 form. You need to pass the generated signature to your client for it to access Payment Pages 2.0.     This REST service should be used only when you implement Payment Pages 2.0.  

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RSASignaturesApi.new

request = SwaggerClient::POSTRSASignatureType.new # POSTRSASignatureType | 


begin
  #Generate RSA signature
  result = api_instance.p_ostrsa_signature(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RSASignaturesApi->p_ostrsa_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTRSASignatureType**](POSTRSASignatureType.md)|  | 

### Return type

[**POSTRSASignatureResponseType**](POSTRSASignatureResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



