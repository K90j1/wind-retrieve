# SwaggerClient::AccountsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_account**](AccountsApi.md#g_et_account) | **GET** /accounts/{account-key} | Get account
[**g_et_account_summary**](AccountsApi.md#g_et_account_summary) | **GET** /accounts/{account-key}/Summary | Get account summary
[**p_ost_account**](AccountsApi.md#p_ost_account) | **POST** /accounts | Create account
[**p_ut_account**](AccountsApi.md#p_ut_account) | **PUT** /accounts/{account-key} | Update account
[**proxy_delete_account**](AccountsApi.md#proxy_delete_account) | **DELETE** /object/account/{id} | CRUD: Delete Account
[**proxy_get_account**](AccountsApi.md#proxy_get_account) | **GET** /object/account/{id} | CRUD: Retrieve Account
[**proxy_post_account**](AccountsApi.md#proxy_post_account) | **POST** /object/account | CRUD: Create Account
[**proxy_put_account**](AccountsApi.md#proxy_put_account) | **PUT** /object/account/{id} | CRUD: Update Account


# **g_et_account**
> GETAccountType g_et_account(account_key)

Get account

This REST API reference describes how to retrieve basic information about a customer account.  This REST call is a quick retrieval that doesn't include the account's subscriptions, invoices, payments, or usage details. Use the [Get account summary](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Accounts/3_GET_account_summary) to get more detailed information about an account. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_key = "account_key_example" # String | Account number or account ID.


begin
  #Get account
  result = api_instance.g_et_account(account_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->g_et_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_key** | **String**| Account number or account ID. | 

### Return type

[**GETAccountType**](GETAccountType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_account_summary**
> GETAccountSummaryType g_et_account_summary(account_key)

Get account summary

This REST API reference describes how to retrieve detailed information about the specified customer account.  The response includes everything retrieved with the [Get basic account information](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Accounts/2_Get_account_basics) call, plus a summary of the account's subscriptions, invoices, payments, and usage for the last six months.  ## Notes  Returns only the six most recent subscriptions based on the subscription updatedDate. Within those subscriptions, there may be many rate plans and many rate plan charges. These items are subject to the maximum limit on the array size. See [REST API basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information on concurrent request limits. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_key = "account_key_example" # String | Account number or account ID.


begin
  #Get account summary
  result = api_instance.g_et_account_summary(account_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->g_et_account_summary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_key** | **String**| Account number or account ID. | 

### Return type

[**GETAccountSummaryType**](GETAccountSummaryType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_account**
> POSTAccountResponseType p_ost_account(request, opts)

Create account

This REST API reference describes how to create a customer account with a credit-card payment method, a bill-to contact, and an optional sold-to contact. Request and response field descriptions and sample code are provided. Use this method to optionally create a subscription, invoice for that subscription, and collect payment through the default payment method. The transaction is atomic; if any part fails for any reason, the entire transaction is rolled back.  This API call is CORS Enabled, so you can use client-side Javascript to invoke the call. For more information, visit the [Zuora CORS REST](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics/G_CORS_REST) page.  ## Notes 1. The account is created in active status.   2. The request must provide either a **creditCard** structure or the **hpmCreditCardPaymentMethodId** field (but not both). The one provided becomes the default payment method for this account. If the credit card information is declined or can't be verified, then the account is not created. 3. Customer accounts created with this call are automatically be set to Auto Pay. 4. If either the **workEmail** or **personalEmail** are specified, then the account's email delivery preference is automatically set to `true`. (In that case, emails go to the **workEmail** address, if it exists, or else the **personalEmail**.) If neither field is specified, the email delivery preference is automatically set to `false`.  ## Defaults for customerAcceptanceDate and serviceActivationDate Default values for **customerAcceptanceDate** and **serviceActivationDate** are set as follows.  |        | serviceActivationDate(SA) specified          | serviceActivationDate (SA) NOT specified  | | ------------- |:-------------:| -----:| | customerAcceptanceDate (CA) specified      | SA uses value in the request call; CA uses value in the request call| CA uses value in the request call;SA uses CE as default | | customerAcceptanceDate (CA) NOT specified      | SA uses value in the request call; CA uses SA as default |   SA and CA use CE as default | 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

request = SwaggerClient::POSTAccountType.new # POSTAccountType | 

opts = { 
  zuora_version: "zuora_version_example" # String | The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ fields. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
}

begin
  #Create account
  result = api_instance.p_ost_account(request, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->p_ost_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTAccountType**](POSTAccountType.md)|  | 
 **zuora_version** | **String**| The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ fields. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information. | [optional] 

### Return type

[**POSTAccountResponseType**](POSTAccountResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_account**
> CommonResponseType p_ut_account(account_key, request)

Update account

This REST API reference describes how to update a customer account by specifying the account-key.  ## Notes 1. Only the fields to be changed should be specified.  Any field that's not included in the request body will not be changed. 2. If an empty field is submitted with this call, the corresponding field in the account is emptied. 3. Email addresses: If no email addresses are specified, no change is made to the email addresses on file or to the email delivery preference. If either the **personalEmail** or **workEmail** is specified (or both), the system updates the corresponding email address(es) on file and the email delivery preference is set to `true`. (In that case, emails go to the **workEmail** address, if it exists, or else the **personalEmail**.) On the other hand, if as a result of this call both of the email addresses for the account are empty, the email delivery preference is set to `false`. 4. The bill-to and sold-to contacts are separate data entities; updating either one does not update the other. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_key = "account_key_example" # String | Account number or account ID.

request = SwaggerClient::PUTAccountType.new # PUTAccountType | 


begin
  #Update account
  result = api_instance.p_ut_account(account_key, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->p_ut_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_key** | **String**| Account number or account ID. | 
 **request** | [**PUTAccountType**](PUTAccountType.md)|  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_delete_account**
> ProxyDeleteResponse proxy_delete_account(id)

CRUD: Delete Account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Account
  result = api_instance.proxy_delete_account(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->proxy_delete_account: #{e}"
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



# **proxy_get_account**
> ProxyGetAccount proxy_get_account(id, opts)

CRUD: Retrieve Account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Account
  result = api_instance.proxy_get_account(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->proxy_get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetAccount**](ProxyGetAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_account**
> ProxyCreateOrModifyResponse proxy_post_account(create_request)

CRUD: Create Account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

create_request = SwaggerClient::ProxyCreateAccount.new # ProxyCreateAccount | 


begin
  #CRUD: Create Account
  result = api_instance.proxy_post_account(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->proxy_post_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateAccount**](ProxyCreateAccount.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_account**
> ProxyCreateOrModifyResponse proxy_put_account(id, modify_request)

CRUD: Update Account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyAccount.new # ProxyModifyAccount | 


begin
  #CRUD: Update Account
  result = api_instance.proxy_put_account(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->proxy_put_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyAccount**](ProxyModifyAccount.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



