# SwaggerClient::UsageApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_usage**](UsageApi.md#g_et_usage) | **GET** /usage/accounts/{account-key} | Get usage
[**p_ost_usage**](UsageApi.md#p_ost_usage) | **POST** /usage | Post usage
[**proxy_delete_usage**](UsageApi.md#proxy_delete_usage) | **DELETE** /object/usage/{id} | CRUD: Delete Usage
[**proxy_get_usage**](UsageApi.md#proxy_get_usage) | **GET** /object/usage/{id} | CRUD: Retrieve Usage
[**proxy_post_usage**](UsageApi.md#proxy_post_usage) | **POST** /object/usage | CRUD: Create Usage
[**proxy_put_usage**](UsageApi.md#proxy_put_usage) | **PUT** /object/usage/{id} | CRUD: Update Usage


# **g_et_usage**
> GETUsageWrapper g_et_usage(account_key)

Get usage

This REST API reference describes how to retrieve usage details for an account. Usage data is returned in reverse chronological order. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsageApi.new

account_key = "account_key_example" # String | Account number or account ID.


begin
  #Get usage
  result = api_instance.g_et_usage(account_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsageApi->g_et_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_key** | **String**| Account number or account ID. | 

### Return type

[**GETUsageWrapper**](GETUsageWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_usage**
> POSTUsageResponseType p_ost_usage(content_type)

Post usage

 This REST API reference describes how to post or import usage data for one or more accounts in the CSV  format. There are no path or query parameters. The data is uploade using the HTTP multipart/form-data POST method and applied to the user's tenant.   ## How this REST API Call Works The content of the upload file must follow the [format](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Usage/1_POST_usage#Upload_File_Format) used by the UI import tool. It must be a comma-separated (CSV) file with a corresponding .csv extension. The file size must not exceed 4MB. Click [here](https://knowledgecenter.zuora.com/@api/deki/files/4105/UsageFileFormat.csv) to download the usage file template.  At the completion of the upload, before actually processing the file contents, theAPI returns a response containing the byte count of the received file and a URL for checking the status of the import process.  Of the five possible results displayed at that URL Pending, Processing, Completed, Canceled, and Failed) only a Completed status indicates that the import was successful.  The operation is atomic; if any record fails, the file is rejected.  In that case, the entire import is rolled back and all stored data is returned to its original state.  To view the actual import status, enter the resulting status URL from the checkImportStatus response using a tool such as POSTMAN.This additional step provides more information about why the import may have failed.  To manage the information after a successful upload, use the web-based UI.  ## Upload File Format The upload file uses the following headings:  | Heading         | Description   | Required | |-----------------|--------|----------| | ACCOUNT_ID      | Enter the account number, e.g., the default account number, such as A00000001, or your custom account number.,Although this field is labeled as Account_Id, it is not the actual Account ID nor Account Name.  | Yes      | | UOM             | Enter the unit of measure. This must match the UOM for the usage that is set up in **Z-Billing Settings > Customize Units of Measure**. | Yes      | | QTY             | Enter the quantity.  | Yes      | | STARTDATE       | Enter the start date of the usage.,This date determines the invoice item service period the associated usage is billed to. Date format is based on locale of the current user. Default date format: `MM/DD/YYYY` | Yes      | | ENDDATE         | Enter the end date of the usage.,This is not used in calculations for usage billing and is optional. Date format is based on locale of the current user. Default date format: `MM/DD/YYYY`    | Yes      | | SUBSCRIPTION_ID | Enter the subscription number or subscription name. If you created the subscription in the Zuora application, Zuora created a number automatically in a format similar to A-S00000001. If you do not provide a value for this field, the associated usage will be added to all subscriptions for the specified Account that use this Unit Of Measure. If your Accounts can have multiple subscriptions and you do not want double or triple counting of usage, you must specify the Subscription or Charge ID in each usage record.  | Yes      | | CHARGE_ID       | Enter the charge number (not the charge name). You can see the charge ID, e.g., C-00000001, when you add your rate plan to your subscription and view your individual charges. See [Adding Products and Rate Plans](https://knowledgecenter.zuora.com/BC_Subscription_Management/Subscriptions/B_Creating_Subscriptions/Adding_Products_and_Rate_Plans) for additional information. If your Accounts can have multiple subscriptions and you do not want double or triple counting of usage, you must specify the specific Subscription or Charge ID in each usage record. This field is related to the Charge Number on the subscription rate plan.                       | Yes      | | DESCRIPTION     | Enter a description for the charge. | No       | 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsageApi.new

content_type = "content_type_example" # String | Must be set to \"multipart/form-data\". 


begin
  #Post usage
  result = api_instance.p_ost_usage(content_type)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsageApi->p_ost_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Must be set to \&quot;multipart/form-data\&quot;.  | 

### Return type

[**POSTUsageResponseType**](POSTUsageResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_delete_usage**
> ProxyDeleteResponse proxy_delete_usage(id)

CRUD: Delete Usage



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsageApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Usage
  result = api_instance.proxy_delete_usage(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsageApi->proxy_delete_usage: #{e}"
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



# **proxy_get_usage**
> ProxyGetUsage proxy_get_usage(id, opts)

CRUD: Retrieve Usage



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsageApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Usage
  result = api_instance.proxy_get_usage(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsageApi->proxy_get_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetUsage**](ProxyGetUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_usage**
> ProxyCreateOrModifyResponse proxy_post_usage(create_request)

CRUD: Create Usage



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsageApi.new

create_request = SwaggerClient::ProxyCreateUsage.new # ProxyCreateUsage | 


begin
  #CRUD: Create Usage
  result = api_instance.proxy_post_usage(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsageApi->proxy_post_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateUsage**](ProxyCreateUsage.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_usage**
> ProxyCreateOrModifyResponse proxy_put_usage(id, modify_request)

CRUD: Update Usage



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsageApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifyUsage.new # ProxyModifyUsage | 


begin
  #CRUD: Update Usage
  result = api_instance.proxy_put_usage(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsageApi->proxy_put_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifyUsage**](ProxyModifyUsage.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



