# SwaggerClient::PaymentMethodsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_payment_methods**](PaymentMethodsApi.md#d_elete_payment_methods) | **DELETE** /payment-methods/{payment-method-id} | Delete payment method
[**g_et_payment_methods**](PaymentMethodsApi.md#g_et_payment_methods) | **GET** /payment-methods/credit-cards/accounts/{account-key} | Get payment methods
[**p_ost_payment_method**](PaymentMethodsApi.md#p_ost_payment_method) | **POST** /payment-methods/credit-cards | Create payment method
[**p_ut_payment_methods**](PaymentMethodsApi.md#p_ut_payment_methods) | **PUT** /payment-methods/credit-cards/{payment-method-id} | Update payment method
[**proxy_delete_payment_method**](PaymentMethodsApi.md#proxy_delete_payment_method) | **DELETE** /object/payment-method/{id} | CRUD: Delete PaymentMethod
[**proxy_get_payment_method**](PaymentMethodsApi.md#proxy_get_payment_method) | **GET** /object/payment-method/{id} | CRUD: Retrieve PaymentMethod
[**proxy_post_payment_method**](PaymentMethodsApi.md#proxy_post_payment_method) | **POST** /object/payment-method | CRUD: Create PaymentMethod
[**proxy_put_payment_method**](PaymentMethodsApi.md#proxy_put_payment_method) | **PUT** /object/payment-method/{id} | CRUD: Update PaymentMethod


# **d_elete_payment_methods**
> CommonResponseType d_elete_payment_methods(payment_method_id)

Delete payment method

Deletes a credit card payment method from the specified customer account.  If the specified payment method is the account's default payment method, the request will fail.  In that case, you must first designate a different payment method for that customer to be the default. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

payment_method_id = "payment_method_id_example" # String | Unique identifier of a payment method. (Since this ID is unique, and linked to a customer account in the system, no customer identifier is needed.)


begin
  #Delete payment method
  result = api_instance.d_elete_payment_methods(payment_method_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->d_elete_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**| Unique identifier of a payment method. (Since this ID is unique, and linked to a customer account in the system, no customer identifier is needed.) | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_payment_methods**
> GETPaymentMethodsType g_et_payment_methods(account_key)

Get payment methods

This REST API reference describes how to retrieve all credit card information for the specified customer account.   ## Notes The response includes details credit or debit cards for the specified customer account. Card numbers are masked, e.g., \"************1234\". Cards are returned in reverse chronological order of last update.  You can send requests for bank transfer payment methods types. The response will not include bank transfer details.  The response only includes payment details on payment methods that are credit or debit cards. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

account_key = "account_key_example" # String | Account number or account ID.


begin
  #Get payment methods
  result = api_instance.g_et_payment_methods(account_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->g_et_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_key** | **String**| Account number or account ID. | 

### Return type

[**GETPaymentMethodsType**](GETPaymentMethodsType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_payment_method**
> POSTPaymentMethodResponseType p_ost_payment_method(request)

Create payment method

This REST API reference describes how to create a new credit card payment method for a customer account.  ## Notes  This API call is CORS Enabled. Use client-side JavaScript to invoke the call. See [Zuora CORS REST](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics/G_CORS_REST) for more information.  

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

request = SwaggerClient::POSTPaymentMethodType.new # POSTPaymentMethodType | 


begin
  #Create payment method
  result = api_instance.p_ost_payment_method(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->p_ost_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTPaymentMethodType**](POSTPaymentMethodType.md)|  | 

### Return type

[**POSTPaymentMethodResponseType**](POSTPaymentMethodResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_payment_methods**
> PUTPaymentMethodResponseType p_ut_payment_methods(payment_method_id, request)

Update payment method

Updates an existing credit card payment method for the specified customer account. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

payment_method_id = "payment_method_id_example" # String | Unique ID of the payment method to update.

request = SwaggerClient::PUTPaymentMethodType.new # PUTPaymentMethodType | 


begin
  #Update payment method
  result = api_instance.p_ut_payment_methods(payment_method_id, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->p_ut_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**| Unique ID of the payment method to update. | 
 **request** | [**PUTPaymentMethodType**](PUTPaymentMethodType.md)|  | 

### Return type

[**PUTPaymentMethodResponseType**](PUTPaymentMethodResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_delete_payment_method**
> ProxyDeleteResponse proxy_delete_payment_method(id)

CRUD: Delete PaymentMethod



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete PaymentMethod
  result = api_instance.proxy_delete_payment_method(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->proxy_delete_payment_method: #{e}"
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



# **proxy_get_payment_method**
> ProxyGetPaymentMethod proxy_get_payment_method(id, opts)

CRUD: Retrieve PaymentMethod



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve PaymentMethod
  result = api_instance.proxy_get_payment_method(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->proxy_get_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetPaymentMethod**](ProxyGetPaymentMethod.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_payment_method**
> ProxyCreateOrModifyResponse proxy_post_payment_method(create_request)

CRUD: Create PaymentMethod



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

create_request = SwaggerClient::ProxyCreatePaymentMethod.new # ProxyCreatePaymentMethod | 


begin
  #CRUD: Create PaymentMethod
  result = api_instance.proxy_post_payment_method(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->proxy_post_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreatePaymentMethod**](ProxyCreatePaymentMethod.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_payment_method**
> ProxyCreateOrModifyResponse proxy_put_payment_method(id, modify_request)

CRUD: Update PaymentMethod



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyPaymentMethod.new # ProxyModifyPaymentMethod | 


begin
  #CRUD: Update PaymentMethod
  result = api_instance.proxy_put_payment_method(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->proxy_put_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyPaymentMethod**](ProxyModifyPaymentMethod.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



