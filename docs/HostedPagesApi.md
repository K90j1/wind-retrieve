# SwaggerClient::HostedPagesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_hosted_pages**](HostedPagesApi.md#get_hosted_pages) | **GET** /hostedpages | Return hosted pages


# **get_hosted_pages**
> GetHostedPagesType get_hosted_pages(opts)

Return hosted pages

The hostedpages call returns the Payment Pages configuration metadata, specifically, page ID, page version, payment method type.  The following are the version-specific and general REST requests for Payment Pages:  * The request for Payment Pages 1.0 configuration information: `GET <BaseURL>/hostedpages?version=1` * The request for Payment Pages 2.0 configuration information: `GET <BaseURL>/hostedpages?version=2` * The request for all versions of Payment Pages configuration information: `GET <BaseURL>/hostedpages`  ## Notes If you do not have the corresponding tenant setting enabled, e.g., the request `version` parameter set to 2 with the Payment Pages 2.0 setting disabled, you will receive an error. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::HostedPagesApi.new

opts = { 
  version_number: "version_number_example" # String | Version of the Payment Pages for which you want to retrieve the configuration information. Specify 1 for Payment Pages 1.0 or 2 for Payment Pages 2.0. If omitted, information for all versions of Payment Pages are returned.  The response also depends on your tenant settings for Payment Pages 1.0 and Payment Pages 2.0. For example, if only the tenant setting for Payment Pages 2.0 is enabled, the response will only contain information for Payment Pages 2.0 forms even when this parameter is omitted. 
}

begin
  #Return hosted pages
  result = api_instance.get_hosted_pages(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HostedPagesApi->get_hosted_pages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version_number** | **String**| Version of the Payment Pages for which you want to retrieve the configuration information. Specify 1 for Payment Pages 1.0 or 2 for Payment Pages 2.0. If omitted, information for all versions of Payment Pages are returned.  The response also depends on your tenant settings for Payment Pages 1.0 and Payment Pages 2.0. For example, if only the tenant setting for Payment Pages 2.0 is enabled, the response will only contain information for Payment Pages 2.0 forms even when this parameter is omitted.  | [optional] 

### Return type

[**GetHostedPagesType**](GetHostedPagesType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



