# SwaggerClient::AccountingPeriodsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_accounting_period**](AccountingPeriodsApi.md#d_elete_accounting_period) | **DELETE** /accounting-periods/{ap-id} | Delete accounting period
[**g_et_accounting_period**](AccountingPeriodsApi.md#g_et_accounting_period) | **GET** /accounting-periods/{ap-id} | Get accounting period
[**g_et_accounting_periods**](AccountingPeriodsApi.md#g_et_accounting_periods) | **GET** /accounting-periods | Get all accounting periods
[**p_ost_accounting_period**](AccountingPeriodsApi.md#p_ost_accounting_period) | **POST** /accounting-periods | Create accounting period
[**p_ut_close_accounting_period**](AccountingPeriodsApi.md#p_ut_close_accounting_period) | **PUT** /accounting-periods/{ap-id}/close | Close accounting period
[**p_ut_pending_close_accounting_period**](AccountingPeriodsApi.md#p_ut_pending_close_accounting_period) | **PUT** /accounting-periods/{ap-id}/pending-close | Set accounting period to pending close
[**p_ut_reopen_accounting_period**](AccountingPeriodsApi.md#p_ut_reopen_accounting_period) | **PUT** /accounting-periods/{ap-id}/reopen | Re-open accounting period
[**p_ut_run_trial_balance**](AccountingPeriodsApi.md#p_ut_run_trial_balance) | **PUT** /accounting-periods/{ap-id}/run-trial-balance | Run trial balance
[**p_ut_update_accounting_period**](AccountingPeriodsApi.md#p_ut_update_accounting_period) | **PUT** /accounting-periods/{ap-id} | Update accounting period
[**proxy_delete_accounting_period**](AccountingPeriodsApi.md#proxy_delete_accounting_period) | **DELETE** /object/accounting-period/{id} | CRUD: Delete AccountingPeriod
[**proxy_get_accounting_period**](AccountingPeriodsApi.md#proxy_get_accounting_period) | **GET** /object/accounting-period/{id} | CRUD: Retrieve AccountingPeriod


# **d_elete_accounting_period**
> CommonResponseType d_elete_accounting_period(ap_id)

Delete accounting period

 Deletes an accounting period.  Prerequisites -------------   * You must have Zuora Finance enabled on your tenant.   * You must have the Delete Accounting Period user permission. See [Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles).   Limitations -----------  The accounting period to be deleted:  * Must be the most recent accounting period  * Must be an open accounting period  * Must have no revenue distributed into it  * Must not have any active journal entries  * Must not be the open-ended accounting period  * Must not be in the process of running a trial balance 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

ap_id = "ap_id_example" # String | ID of the accounting period you want to delete.


begin
  #Delete accounting period
  result = api_instance.d_elete_accounting_period(ap_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->d_elete_accounting_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ap_id** | **String**| ID of the accounting period you want to delete. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_accounting_period**
> GETAccountingPeriodType g_et_accounting_period(ap_id)

Get accounting period

Retrieves an accounting period. Prerequisites -------------  You must have Zuora Finance enabled on your tenant. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

ap_id = "ap_id_example" # String | ID of the accounting period you want to get.


begin
  #Get accounting period
  result = api_instance.g_et_accounting_period(ap_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->g_et_accounting_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ap_id** | **String**| ID of the accounting period you want to get. | 

### Return type

[**GETAccountingPeriodType**](GETAccountingPeriodType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_accounting_periods**
> GETAccountingPeriodsType g_et_accounting_periods

Get all accounting periods

Retrieves all accounting periods on your tenant.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

begin
  #Get all accounting periods
  result = api_instance.g_et_accounting_periods
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->g_et_accounting_periods: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GETAccountingPeriodsType**](GETAccountingPeriodsType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_accounting_period**
> POSTAccountingPeriodResponseType p_ost_accounting_period(request)

Create accounting period

Creates an accounting period. Prerequisites ------------- * You must have Zuora Finance enabled on your tenant. * You must have the Create Accounting Period user permission. See [Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/Z-Finance_Roles).  Limitations ----------- * When creating the first accounting period on your tenant, the start date must be equal to or earlier than the date of the earliest transaction on the tenant. * Start and end dates of accounting periods must be contiguous. For example, if one accounting period ends on January 31, the next period must start on February 1. * If you have the Revenue Recognition Package and have enabled the \"Monthly recognition over time\" revenue recognition model, the accounting period start date and end date must be on the first day and last day of the month, respectively. Note that the start and end dates do not necessarily have to be in the same month.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

request = SwaggerClient::POSTAccountingPeriodType.new # POSTAccountingPeriodType | 


begin
  #Create accounting period
  result = api_instance.p_ost_accounting_period(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->p_ost_accounting_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTAccountingPeriodType**](POSTAccountingPeriodType.md)|  | 

### Return type

[**POSTAccountingPeriodResponseType**](POSTAccountingPeriodResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_close_accounting_period**
> CommonResponseType p_ut_close_accounting_period(ap_id)

Close accounting period

Close an [accounting period](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/E_Accounting_Periods) by accounting period ID.  Prerequisites ------------- You must have Zuora Finance enabled on your tenant. You must have the Manage Close Process and Run Trial Balance user permissions. See [Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles). Limitations ----------- * The accounting period cannot already be closed. * The accounting period cannot be in the process of running a trial balance. * All earlier accounting periods must be closed. * There must be no required action items for the accounting period. See [Reconcile Transactions Before Closing an Accounting Period](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/E_Accounting_Periods/G_Reconcile_transactions_before_closing_an_accounting_period) for more information.  Notes ----- When you close an accounting period in Zuora, a trial balance is automatically run for that period. A successful response means only that the accounting period is now closed, but does not mean that the trial balance has successfully completed.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

ap_id = "ap_id_example" # String | ID of the accounting period you want to close.


begin
  #Close accounting period
  result = api_instance.p_ut_close_accounting_period(ap_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->p_ut_close_accounting_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ap_id** | **String**| ID of the accounting period you want to close. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_pending_close_accounting_period**
> CommonResponseType p_ut_pending_close_accounting_period(ap_id)

Set accounting period to pending close

Sets an accounting period to pending close.   Prerequisites -------------  * You must have Zuora Finance enabled on your tenant. * You must have the Manage Close Process and Run Trial Balance user permissions. See [Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles).              Limitations   -----------    * The accounting period cannot be closed or pending close.    * The accounting period cannot be in the process of running a trial balance.    * All earlier accounting periods must be closed.     Notes ----- When you set an accounting period to pending close in Zuora, a trial balance is automatically run for that period. A response of `{ \"success\": true }`  means only that the accounting period status is now pending close, but does not mean that the trial balance has successfully completed. You can use the Get Accounting Period REST API call to view details about the outcome of the trial balance. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

ap_id = "ap_id_example" # String | ID of the accounting period you want to set to pending close.


begin
  #Set accounting period to pending close
  result = api_instance.p_ut_pending_close_accounting_period(ap_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->p_ut_pending_close_accounting_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ap_id** | **String**| ID of the accounting period you want to set to pending close. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_reopen_accounting_period**
> CommonResponseType p_ut_reopen_accounting_period(ap_id)

Re-open accounting period

Re-opens an accounting period. See [Re-Open Accounting Periods](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/E_Accounting_Periods/H_Reopen_accounting_periods) for more information. Prerequisites ------------- * You must have Zuora Finance enabled on your tenant. * You must have the Manage Close Process and Run Trial Balance user permissions. See [Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles).  Limitations ----------- * The accounting period must be closed or pending close. * You can only re-open an accounting period that is immediately previous to an open period. See [re-open an accounting period](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/E_Accounting_Periods/H_Reopen_accounting_periods) for an example.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

ap_id = "ap_id_example" # String | ID of the accounting period that you want to re-open.


begin
  #Re-open accounting period
  result = api_instance.p_ut_reopen_accounting_period(ap_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->p_ut_reopen_accounting_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ap_id** | **String**| ID of the accounting period that you want to re-open. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_run_trial_balance**
> CommonResponseType p_ut_run_trial_balance(ap_id)

Run trial balance

Runs the trial balance for an accounting period. See [Run a Trial Balance](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/E_Accounting_Periods/D_Run_a_trial_balance) for more information.  Prerequisites -------------  * You must have Zuora Finance enabled on your tenant.  * You must have the Manage Close Process and Run Trial Balance user permissions. See [Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles).             Limitations  -----------    * The accounting period must be open.    * The accounting period cannot already be in the process of running a trial balance.   Notes ----- The trial balance is run asynchronously. A response of `{ \"success\": true }` means only that the trial balance has started processing, but does not mean that the trial balance has successfully completed. You can use the [Get Accounting Period](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Accounting_Periods/Get_Accounting_Period) REST API call to view details about the outcome of the trial balance. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

ap_id = "ap_id_example" # String | ID of the accounting period for which you want to run a trial balance.


begin
  #Run trial balance
  result = api_instance.p_ut_run_trial_balance(ap_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->p_ut_run_trial_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ap_id** | **String**| ID of the accounting period for which you want to run a trial balance. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_update_accounting_period**
> CommonResponseType p_ut_update_accounting_period(ap_id, request)

Update accounting period

 Updates an accounting period.  Prerequisites -------------  * You must have Zuora Finance enabled on your tenant.  * You must have the Create Accounting Period user permission. See [Finance Roles](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles).  Limitations -----------  * You can update the start date of only the earliest accounting period on your tenant. You cannot update the start date of later periods.  * If you update the earliest accounting period, the start date must be equal to or earlier than the date of the earliest transaction on the tenant.  * Start and end dates of accounting periods must be contiguous. For example, if one accounting period ends on January 31, the next period must start on February 1.  * If you have the Revenue Recognition Package and have enabled the \"Monthly recognition over time\" revenue recognition model, the accounting period start date and end date must be on the first day and last day of the month, respectively. Note that the start and end dates do not necessarily have to be in the same month.  * You cannot update the start date or end date of an accounting period if:   * Any revenue has been distributed into the period.   * The period has any active journal entries. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

ap_id = "ap_id_example" # String | ID of the accounting period you want to update.

request = SwaggerClient::PUTAccountingPeriodType.new # PUTAccountingPeriodType | 


begin
  #Update accounting period
  result = api_instance.p_ut_update_accounting_period(ap_id, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->p_ut_update_accounting_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ap_id** | **String**| ID of the accounting period you want to update. | 
 **request** | [**PUTAccountingPeriodType**](PUTAccountingPeriodType.md)|  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_delete_accounting_period**
> ProxyDeleteResponse proxy_delete_accounting_period(id)

CRUD: Delete AccountingPeriod



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete AccountingPeriod
  result = api_instance.proxy_delete_accounting_period(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->proxy_delete_accounting_period: #{e}"
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



# **proxy_get_accounting_period**
> ProxyGetAccountingPeriod proxy_get_accounting_period(id, opts)

CRUD: Retrieve AccountingPeriod



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingPeriodsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve AccountingPeriod
  result = api_instance.proxy_get_accounting_period(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingPeriodsApi->proxy_get_accounting_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetAccountingPeriod**](ProxyGetAccountingPeriod.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



