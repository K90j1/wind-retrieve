# SwaggerClient::QuotesDocumentApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_quote_doc**](QuotesDocumentApi.md#p_ost_quote_doc) | **POST** /quotes/document | Generate quotes document


# **p_ost_quote_doc**
> POSTQuoteDocResponseType p_ost_quote_doc(request)

Generate quotes document

The `document` call generates a quote document and returns the generated document URL. You can directly access the generated quote file through the returned URL.  The `document` call should be only used from Zuora Quotes.   ## File Size Limitation  The maximum export file size is 2047MB. If you have large data requests that go over this limit, you will get the following 403 HTTP response code from Zuora: `security:max-object-size>2047MB</security:max-object-size>`  Submit a request at [Zuora Global Support](http://support.zuora.com/) if you require additional assistance.  We can work with you to determine if large file optimization is an option for you. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::QuotesDocumentApi.new

request = SwaggerClient::POSTQuoteDocType.new # POSTQuoteDocType | 


begin
  #Generate quotes document
  result = api_instance.p_ost_quote_doc(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling QuotesDocumentApi->p_ost_quote_doc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTQuoteDocType**](POSTQuoteDocType.md)|  | 

### Return type

[**POSTQuoteDocResponseType**](POSTQuoteDocResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



