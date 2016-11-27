# SwaggerClient::CreditBalanceAdjustmentsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_delete_credit_balance_adjustment**](CreditBalanceAdjustmentsApi.md#proxy_delete_credit_balance_adjustment) | **DELETE** /object/credit-balance-adjustment/{id} | CRUD: Delete CreditBalanceAdjustment
[**proxy_get_credit_balance_adjustment**](CreditBalanceAdjustmentsApi.md#proxy_get_credit_balance_adjustment) | **GET** /object/credit-balance-adjustment/{id} | CRUD: Retrieve CreditBalanceAdjustment


# **proxy_delete_credit_balance_adjustment**
> ProxyDeleteResponse proxy_delete_credit_balance_adjustment(id)

CRUD: Delete CreditBalanceAdjustment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CreditBalanceAdjustmentsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete CreditBalanceAdjustment
  result = api_instance.proxy_delete_credit_balance_adjustment(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CreditBalanceAdjustmentsApi->proxy_delete_credit_balance_adjustment: #{e}"
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



# **proxy_get_credit_balance_adjustment**
> ProxyGetCreditBalanceAdjustment proxy_get_credit_balance_adjustment(id, opts)

CRUD: Retrieve CreditBalanceAdjustment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CreditBalanceAdjustmentsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve CreditBalanceAdjustment
  result = api_instance.proxy_get_credit_balance_adjustment(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CreditBalanceAdjustmentsApi->proxy_get_credit_balance_adjustment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetCreditBalanceAdjustment**](ProxyGetCreditBalanceAdjustment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



