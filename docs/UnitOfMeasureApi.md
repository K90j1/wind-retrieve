# SwaggerClient::UnitOfMeasureApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_unit_of_measure**](UnitOfMeasureApi.md#proxy_delete_unit_of_measure) | **DELETE** /object/unit-of-measure/{id} | CRUD: Delete UnitOfMeasure
[**proxy_get_unit_of_measure**](UnitOfMeasureApi.md#proxy_get_unit_of_measure) | **GET** /object/unit-of-measure/{id} | CRUD: Retrieve UnitOfMeasure
[**proxy_post_unit_of_measure**](UnitOfMeasureApi.md#proxy_post_unit_of_measure) | **POST** /object/unit-of-measure | CRUD: Create UnitOfMeasure
[**proxy_put_unit_of_measure**](UnitOfMeasureApi.md#proxy_put_unit_of_measure) | **PUT** /object/unit-of-measure/{id} | CRUD: Update UnitOfMeasure


# **proxy_delete_unit_of_measure**
> ProxyDeleteResponse proxy_delete_unit_of_measure(id)

CRUD: Delete UnitOfMeasure



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UnitOfMeasureApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete UnitOfMeasure
  result = api_instance.proxy_delete_unit_of_measure(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UnitOfMeasureApi->proxy_delete_unit_of_measure: #{e}"
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



# **proxy_get_unit_of_measure**
> ProxyGetUnitOfMeasure proxy_get_unit_of_measure(id, opts)

CRUD: Retrieve UnitOfMeasure



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UnitOfMeasureApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve UnitOfMeasure
  result = api_instance.proxy_get_unit_of_measure(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UnitOfMeasureApi->proxy_get_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetUnitOfMeasure**](ProxyGetUnitOfMeasure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_unit_of_measure**
> ProxyCreateOrModifyResponse proxy_post_unit_of_measure(create_request)

CRUD: Create UnitOfMeasure



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UnitOfMeasureApi.new

create_request = SwaggerClient::ProxyCreateUnitOfMeasure.new # ProxyCreateUnitOfMeasure | 


begin
  #CRUD: Create UnitOfMeasure
  result = api_instance.proxy_post_unit_of_measure(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UnitOfMeasureApi->proxy_post_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateUnitOfMeasure**](ProxyCreateUnitOfMeasure.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_unit_of_measure**
> ProxyCreateOrModifyResponse proxy_put_unit_of_measure(id, modify_request)

CRUD: Update UnitOfMeasure



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UnitOfMeasureApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyUnitOfMeasure.new # ProxyModifyUnitOfMeasure | 


begin
  #CRUD: Update UnitOfMeasure
  result = api_instance.proxy_put_unit_of_measure(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UnitOfMeasureApi->proxy_put_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyUnitOfMeasure**](ProxyModifyUnitOfMeasure.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



