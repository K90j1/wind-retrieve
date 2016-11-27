# SwaggerClient::CatalogApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_catalog**](CatalogApi.md#g_et_catalog) | **GET** /catalog/products | Get product catalog


# **g_et_catalog**
> GETCatalogType g_et_catalog

Get product catalog

This REST API reference describes how to retrieve the entire product catalog, including all products, features, and their corresponding rate plans, charges. Products are returned in reverse chronological order on the UpdatedDate field.   The REST API does not support the creation or updating of products, product rate plans and charges; these tasks can only be performed in the web-based UI or via the SOAP API.   With rate plans and rate plan charges, the REST API has a maximum array size. For details, see [Array Size](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics#Array_Size). 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogApi.new

begin
  #Get product catalog
  result = api_instance.g_et_catalog
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogApi->g_et_catalog: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GETCatalogType**](GETCatalogType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



