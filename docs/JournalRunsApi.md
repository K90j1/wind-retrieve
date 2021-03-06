# SwaggerClient::JournalRunsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_journal_run**](JournalRunsApi.md#d_elete_journal_run) | **DELETE** /journal-runs/{jr-number} | Delete journal run
[**g_et_journal_run**](JournalRunsApi.md#g_et_journal_run) | **GET** /journal-runs/{jr-number} | Get journal run
[**p_ost_journal_run**](JournalRunsApi.md#p_ost_journal_run) | **POST** /journal-runs | Create journal run
[**p_ut_journal_run**](JournalRunsApi.md#p_ut_journal_run) | **PUT** /journal-runs/{jr-number}/cancel | Cancel journal run


# **d_elete_journal_run**
> CommonResponseType d_elete_journal_run(jr_number)

Delete journal run

This reference describes how to delete a journal run using the REST API.                         You can only delete journal runs that have already been canceled. See [Cancel Journal Run](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Journal_Runs/Cancel_Journal_Run) for more information.                         You must have the \"Delete Cancelled Journal Run\" [Z-Finance user permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/User_Roles/f_Finance_Roles) enabled to delete journal runs. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::JournalRunsApi.new

jr_number = "jr_number_example" # String | Journal run number. Must be a valid journal run number in the format `JR-00000001`. 


begin
  #Delete journal run
  result = api_instance.d_elete_journal_run(jr_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JournalRunsApi->d_elete_journal_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jr_number** | **String**| Journal run number. Must be a valid journal run number in the format &#x60;JR-00000001&#x60;.  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_journal_run**
> GETJournalRunType g_et_journal_run(jr_number)

Get journal run

This REST API reference describes how to get information about a journal run. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::JournalRunsApi.new

jr_number = "jr_number_example" # String | Journal run number. Must be a valid journal run number in the format `JR-00000001`. 


begin
  #Get journal run
  result = api_instance.g_et_journal_run(jr_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JournalRunsApi->g_et_journal_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jr_number** | **String**| Journal run number. Must be a valid journal run number in the format &#x60;JR-00000001&#x60;.  | 

### Return type

[**GETJournalRunType**](GETJournalRunType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_journal_run**
> POSTJournalRunResponseType p_ost_journal_run(request)

Create journal run

This REST API reference describes how to create a journal run. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::JournalRunsApi.new

request = SwaggerClient::POSTJournalRunType.new # POSTJournalRunType | 


begin
  #Create journal run
  result = api_instance.p_ost_journal_run(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JournalRunsApi->p_ost_journal_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTJournalRunType**](POSTJournalRunType.md)|  | 

### Return type

[**POSTJournalRunResponseType**](POSTJournalRunResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_journal_run**
> CommonResponseType p_ut_journal_run(jr_number)

Cancel journal run

This reference describes how to cancel a journal run using the REST API.            The summary journal entries in the journal run are canceled asynchronously. See the \"Example\" section below for details.            You must have the \"Cancel Journal Run\" [Z-Finance user permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles) enabled to cancel journal runs.  ## Notes When you cancel a journal run, the summary journal entries associated with that journal run are canceled asynchronously. A response of `{ \"success\": true }` means only that the specified journal run has a status of \"Pending\", \"Error\", or \"Completed\" and therefore can be canceled, but does not mean that the whole journal run was successfully canceled.  For example, let's say you want to cancel journal run JR-00000075. The journal run status is \"Completed\" and it contains ten journal entries. One of the journal entries has its Transferred to Accounting status set to \"Yes\", meaning that the entry cannot be canceled. The workflow might go as follows: 1. You make an API call to cancel the journal run. 2. The journal run status is \"Completed\", so you receive a response of `{ \"success\": true }`. 3. Zuora begins asynchronously canceling journal entries associated with the journal run. The journal entry whose Transferred to Accounting status is \"Yes\" fails to be canceled. The cancelation process continues, and the other journal entries are successfully canceled. 4. The journal run status remains as \"Completed\". The status does not change to \"Canceled\" because the journal run still contains a journey entry that is not canceled. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::JournalRunsApi.new

jr_number = "jr_number_example" # String | Journal run number. Must be a valid journal run number in the format JR-00000001.  You can only cancel a journal run whose status is \"Pending\", \"Error\", or \"Completed\". 


begin
  #Cancel journal run
  result = api_instance.p_ut_journal_run(jr_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JournalRunsApi->p_ut_journal_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jr_number** | **String**| Journal run number. Must be a valid journal run number in the format JR-00000001.  You can only cancel a journal run whose status is \&quot;Pending\&quot;, \&quot;Error\&quot;, or \&quot;Completed\&quot;.  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



