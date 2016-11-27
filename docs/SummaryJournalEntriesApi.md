# SwaggerClient::SummaryJournalEntriesApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_summary_journal_entry**](SummaryJournalEntriesApi.md#d_elete_summary_journal_entry) | **DELETE** /journal-entries/{je-number} | Delete summary journal entry
[**g_et_journal_entries_in_journal_run**](SummaryJournalEntriesApi.md#g_et_journal_entries_in_journal_run) | **GET** /journal-entries/journal-runs/{jr-number} | Get all summary journal entries in a journal run
[**g_et_journal_entry_detail**](SummaryJournalEntriesApi.md#g_et_journal_entry_detail) | **GET** /journal-entries/{je-number} | Get summary journal entry
[**p_ost_journal_entry**](SummaryJournalEntriesApi.md#p_ost_journal_entry) | **POST** /journal-entries | Create summary journal entry
[**p_ut_basic_summary_journal_entry**](SummaryJournalEntriesApi.md#p_ut_basic_summary_journal_entry) | **PUT** /journal-entries/{je-number}/basic-information | Update basic information of a summary journal entry
[**p_ut_summary_journal_entry**](SummaryJournalEntriesApi.md#p_ut_summary_journal_entry) | **PUT** /journal-entries/{je-number}/cancel | Cancel summary journal entry


# **d_elete_summary_journal_entry**
> CommonResponseType d_elete_summary_journal_entry(je_number)

Delete summary journal entry

This reference describes how to delete a summary journal entry using the REST API.  You must have the \"Delete Cancelled Journal Entry\" [Z-Finance user permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles) enabled to delete summary journal entries.  A summary journal entry must be canceled before it can be deleted. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SummaryJournalEntriesApi.new

je_number = "je_number_example" # String | Journal entry number in the format JE-00000001.


begin
  #Delete summary journal entry
  result = api_instance.d_elete_summary_journal_entry(je_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SummaryJournalEntriesApi->d_elete_summary_journal_entry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **je_number** | **String**| Journal entry number in the format JE-00000001. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_journal_entries_in_journal_run**
> GETJournalEntriesInJournalRunType g_et_journal_entries_in_journal_run(jr_number)

Get all summary journal entries in a journal run

 This REST API reference describes how to retrieve information about all summary journal entries in a journal run. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SummaryJournalEntriesApi.new

jr_number = "jr_number_example" # String | Journal run number.


begin
  #Get all summary journal entries in a journal run
  result = api_instance.g_et_journal_entries_in_journal_run(jr_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SummaryJournalEntriesApi->g_et_journal_entries_in_journal_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jr_number** | **String**| Journal run number. | 

### Return type

[**GETJournalEntriesInJournalRunType**](GETJournalEntriesInJournalRunType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_journal_entry_detail**
> GETJournalEntryDetailType g_et_journal_entry_detail(je_number)

Get summary journal entry

This REST API reference describes how to get information about a summary journal entry by its journal entry number. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SummaryJournalEntriesApi.new

je_number = "je_number_example" # String | 


begin
  #Get summary journal entry
  result = api_instance.g_et_journal_entry_detail(je_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SummaryJournalEntriesApi->g_et_journal_entry_detail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **je_number** | **String**|  | 

### Return type

[**GETJournalEntryDetailType**](GETJournalEntryDetailType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_journal_entry**
> POSTJournalEntryResponseType p_ost_journal_entry(request)

Create summary journal entry

This REST API reference describes how to manually create a summary journal entry. Request and response field descriptions and sample code are provided. ## Requirements 1.The sum of debits must equal the sum of credits in the summary journal entry.  2.The following applies only if you use foreign currency conversion:   * If you have configured [Aggregate transactions with different currencies during a Journal Run](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/E_Accounting_Periods/C_Configure_accounting_rules#Aggregate_transactions_with_different_currencies_during_a_Journal_Run) to \"Yes\", the value of the **currency** field must be the same as your tenant's home currency. That is, you must create journal entries using your home currency.   * All journal entries in an accounting period must either all be aggregated or all be unaggregated. You cannot have a mix of aggregated and unaggregated journal entries in the same accounting period.  See [Foreign Currency Conversion for Summary Journal Entries](https://knowledgecenter.zuora.com/CC_Finance/Foreign_Currency_Conversion/Foreign_Currency_Conversion_for_Summary_Journal_Entries) for more information about currency aggregation. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SummaryJournalEntriesApi.new

request = SwaggerClient::POSTJournalEntryType.new # POSTJournalEntryType | 


begin
  #Create summary journal entry
  result = api_instance.p_ost_journal_entry(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SummaryJournalEntriesApi->p_ost_journal_entry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTJournalEntryType**](POSTJournalEntryType.md)|  | 

### Return type

[**POSTJournalEntryResponseType**](POSTJournalEntryResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_basic_summary_journal_entry**
> CommonResponseType p_ut_basic_summary_journal_entry(je_number, request)

Update basic information of a summary journal entry

 This REST API reference describes how to update the basic information of a summary journal entry. Request and response field descriptions and sample code are provided. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SummaryJournalEntriesApi.new

je_number = "je_number_example" # String | Journal entry number in the format JE-00000001.

request = SwaggerClient::PUTBasicSummaryJournalEntryType.new # PUTBasicSummaryJournalEntryType | 


begin
  #Update basic information of a summary journal entry
  result = api_instance.p_ut_basic_summary_journal_entry(je_number, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SummaryJournalEntriesApi->p_ut_basic_summary_journal_entry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **je_number** | **String**| Journal entry number in the format JE-00000001. | 
 **request** | [**PUTBasicSummaryJournalEntryType**](PUTBasicSummaryJournalEntryType.md)|  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_summary_journal_entry**
> CommonResponseType p_ut_summary_journal_entry(je_number)

Cancel summary journal entry

 This reference describes how to cancel a summary journal entry using the REST API.  You must have the \"Cancel Journal Entry\" [Z-Finance user permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles) enabled to cancel summary journal entries.  A summary journal entry cannot be canceled if its Transferred to Accounting status is \"Yes\" or \"Processing\". 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SummaryJournalEntriesApi.new

je_number = "je_number_example" # String | Journal entry number in the format JE-00000001.


begin
  #Cancel summary journal entry
  result = api_instance.p_ut_summary_journal_entry(je_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SummaryJournalEntriesApi->p_ut_summary_journal_entry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **je_number** | **String**| Journal entry number in the format JE-00000001. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



