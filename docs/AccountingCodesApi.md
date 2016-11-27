# SwaggerClient::AccountingCodesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_accounting_code**](AccountingCodesApi.md#d_elete_accounting_code) | **DELETE** /accounting-codes/{ac-id} | Delete accounting code
[**g_et_accounting_code_item**](AccountingCodesApi.md#g_et_accounting_code_item) | **GET** /accounting-codes/{ac-id} | Query an accounting code
[**g_et_accounting_codes**](AccountingCodesApi.md#g_et_accounting_codes) | **GET** /accounting-codes | Get all accounting codes
[**p_ost_accounting_code**](AccountingCodesApi.md#p_ost_accounting_code) | **POST** /accounting-codes | Create accounting code
[**p_ut_accounting_code**](AccountingCodesApi.md#p_ut_accounting_code) | **PUT** /accounting-codes/{ac-id} | Update an accounting code
[**p_ut_activate_accounting_code**](AccountingCodesApi.md#p_ut_activate_accounting_code) | **PUT** /accounting-codes/{ac-id}/activate | Activate accounting code
[**p_ut_deactivate_accounting_code**](AccountingCodesApi.md#p_ut_deactivate_accounting_code) | **PUT** /accounting-codes/{ac-id}/deactivate | Deactivate accounting code
[**proxy_delete_accounting_code**](AccountingCodesApi.md#proxy_delete_accounting_code) | **DELETE** /object/accounting-code/{id} | CRUD: Delete AccountingCode
[**proxy_get_accounting_code**](AccountingCodesApi.md#proxy_get_accounting_code) | **GET** /object/accounting-code/{id} | CRUD: Retrieve AccountingCode
[**proxy_post_accounting_code**](AccountingCodesApi.md#proxy_post_accounting_code) | **POST** /object/accounting-code | CRUD: Create AccountingCode
[**proxy_put_accounting_code**](AccountingCodesApi.md#proxy_put_accounting_code) | **PUT** /object/accounting-code/{id} | CRUD: Update AccountingCode


# **d_elete_accounting_code**
> CommonResponseType d_elete_accounting_code(ac_id)

Delete accounting code

This reference describes how to [delete an accounting code](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/G_Chart_of_Accounts/A_Set_Up_Chart_of_Accounts#Delete_an_Accounting_Code) through the REST API. ## Prerequisites If you have Z-Finance enabled on your tenant, then you must have the Z-Finance Delete Unused Accounting Code permission. See [Z-Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles). ## Limitations You can only delete accounting codes that have never been associated with any transactions. An accounting code must be deactivated before you can delete it. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

ac_id = "ac_id_example" # String | ID of the accounting code you want to delete.


begin
  #Delete accounting code
  result = api_instance.d_elete_accounting_code(ac_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->d_elete_accounting_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ac_id** | **String**| ID of the accounting code you want to delete. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_accounting_code_item**
> GETAccountingCodeItemType g_et_accounting_code_item(ac_id)

Query an accounting code

This reference describes how to query an accounting code through the REST API.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

ac_id = "ac_id_example" # String | ID of the accounting code you want to query.


begin
  #Query an accounting code
  result = api_instance.g_et_accounting_code_item(ac_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->g_et_accounting_code_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ac_id** | **String**| ID of the accounting code you want to query. | 

### Return type

[**GETAccountingCodeItemType**](GETAccountingCodeItemType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_accounting_codes**
> GETAccountingCodesType g_et_accounting_codes

Get all accounting codes

This reference describes how to query all accounting codes in your chart of accounts through the REST API.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

begin
  #Get all accounting codes
  result = api_instance.g_et_accounting_codes
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->g_et_accounting_codes: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GETAccountingCodesType**](GETAccountingCodesType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_accounting_code**
> POSTAccountingCodeResponseType p_ost_accounting_code(request)

Create accounting code

This reference describes how to create a new accounting code through the REST API.  The accounting code will be active as soon as it has been created.  ## Prerequisites   If you have Z-Finance enabled on your tenant, you must have the Z-Finance Create Accounting Code permission. See [Z-Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles). 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

request = SwaggerClient::POSTAccountingCodeType.new # POSTAccountingCodeType | 


begin
  #Create accounting code
  result = api_instance.p_ost_accounting_code(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->p_ost_accounting_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTAccountingCodeType**](POSTAccountingCodeType.md)|  | 

### Return type

[**POSTAccountingCodeResponseType**](POSTAccountingCodeResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_accounting_code**
> CommonResponseType p_ut_accounting_code(ac_id, request)

Update an accounting code

This reference describes how to update an existing accounting code through the REST API. ## Prerequisites   If you have Z-Finance enabled on your tenant, you must have the Z-Finance Manage Accounting Code permission. See [Z-Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles). ## Limitations You can only update accounting codes that are not already associated with any transactions. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

ac_id = "ac_id_example" # String | ID of the accounting code you want to update.

request = SwaggerClient::PUTAccountingCodeType.new # PUTAccountingCodeType | 


begin
  #Update an accounting code
  result = api_instance.p_ut_accounting_code(ac_id, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->p_ut_accounting_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ac_id** | **String**| ID of the accounting code you want to update. | 
 **request** | [**PUTAccountingCodeType**](PUTAccountingCodeType.md)|  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_activate_accounting_code**
> CommonResponseType p_ut_activate_accounting_code(ac_id)

Activate accounting code

This reference describes how to [activate an accounting code](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/G_Chart_of_Accounts/A_Set_Up_Chart_of_Accounts#Activate_or_Deactivate_an_Accounting_Code) through the REST API.  Prerequisites ------------- If you have Z-Finance enabled on your tenant, you must have the Z-Finance Manage Accounting Code permission. See [Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles). 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

ac_id = "ac_id_example" # String | ID of the accounting code you want to activate.


begin
  #Activate accounting code
  result = api_instance.p_ut_activate_accounting_code(ac_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->p_ut_activate_accounting_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ac_id** | **String**| ID of the accounting code you want to activate. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_deactivate_accounting_code**
> CommonResponseType p_ut_deactivate_accounting_code(ac_id)

Deactivate accounting code

This reference describes how to [deactivate an accounting code](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/G_Chart_of_Accounts/A_Set_Up_Chart_of_Accounts#Activate_or_Deactivate_an_Accounting_Code) through the REST API.  ## Prerequisites If you have Z-Finance enabled on your tenant, you must have the Z-Finance Manage Accounting Code permission. See [Z-Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles). ## Limitations You can only deactivate accounting codes that are not associated with any transactions.  You cannot disable accounting codes of type AccountsReceivable. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

ac_id = "ac_id_example" # String | ID of the accounting code you want to deactivate.


begin
  #Deactivate accounting code
  result = api_instance.p_ut_deactivate_accounting_code(ac_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->p_ut_deactivate_accounting_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ac_id** | **String**| ID of the accounting code you want to deactivate. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_delete_accounting_code**
> ProxyDeleteResponse proxy_delete_accounting_code(id)

CRUD: Delete AccountingCode



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete AccountingCode
  result = api_instance.proxy_delete_accounting_code(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->proxy_delete_accounting_code: #{e}"
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



# **proxy_get_accounting_code**
> ProxyGetAccountingCode proxy_get_accounting_code(id, opts)

CRUD: Retrieve AccountingCode



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve AccountingCode
  result = api_instance.proxy_get_accounting_code(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->proxy_get_accounting_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetAccountingCode**](ProxyGetAccountingCode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_accounting_code**
> ProxyCreateOrModifyResponse proxy_post_accounting_code(create_request)

CRUD: Create AccountingCode



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

create_request = SwaggerClient::ProxyCreateAccountingCode.new # ProxyCreateAccountingCode | 


begin
  #CRUD: Create AccountingCode
  result = api_instance.proxy_post_accounting_code(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->proxy_post_accounting_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateAccountingCode**](ProxyCreateAccountingCode.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_accounting_code**
> ProxyCreateOrModifyResponse proxy_put_accounting_code(id, modify_request)

CRUD: Update AccountingCode



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyAccountingCode.new # ProxyModifyAccountingCode | 


begin
  #CRUD: Update AccountingCode
  result = api_instance.proxy_put_accounting_code(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->proxy_put_accounting_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyAccountingCode**](ProxyModifyAccountingCode.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



