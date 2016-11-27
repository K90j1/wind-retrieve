# SwaggerClient::MassUpdaterApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_mass_update**](MassUpdaterApi.md#g_et_mass_update) | **GET** /bulk/{bulk-key} | Get mass action result
[**p_ost_mass_update**](MassUpdaterApi.md#p_ost_mass_update) | **POST** /bulk | Perform mass action
[**p_ut_mass_updater**](MassUpdaterApi.md#p_ut_mass_updater) | **PUT** /bulk/{bulk-key}/stop | Stop mass action


# **g_et_mass_update**
> GETMassUpdateType g_et_mass_update(bulk_key)

Get mass action result

This reference describes how to get information about the result of a mass action through the REST API. See [Mass Updater](https://knowledgecenter.zuora.com/CC_Finance/Mass_Updater) for more information about mass actions. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MassUpdaterApi.new

bulk_key = "bulk_key_example" # String | String of 32 characters that identifies a mass action. You get the bulk-key after [performing a mass action](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Mass_Updater/A_Perform_Mass_Action) through the REST API. 


begin
  #Get mass action result
  result = api_instance.g_et_mass_update(bulk_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MassUpdaterApi->g_et_mass_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_key** | **String**| String of 32 characters that identifies a mass action. You get the bulk-key after [performing a mass action](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Mass_Updater/A_Perform_Mass_Action) through the REST API.  | 

### Return type

[**GETMassUpdateType**](GETMassUpdateType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_mass_update**
> POSTMassUpdateResponseType p_ost_mass_update(content_type, request)

Perform mass action

This reference describes how to perform a mass action through the REST API. See [Mass Updater](https://knowledgecenter.zuora.com/CC_Finance/Mass_Updater) for more information about performing mass actions.  Using this API method, you send a multipart/form-data request containing a `.csv` file with data about the mass action you want to perform. Zuora returns a key and then asynchronously processes the mass action. You can use the key to get details about the result of the mass action. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MassUpdaterApi.new

content_type = "content_type_example" # String | Must be multipart/form-data. 

request = SwaggerClient::POSTMassUpdateType.new # POSTMassUpdateType | 


begin
  #Perform mass action
  result = api_instance.p_ost_mass_update(content_type, request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MassUpdaterApi->p_ost_mass_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Must be multipart/form-data.  | 
 **request** | [**POSTMassUpdateType**](POSTMassUpdateType.md)|  | 

### Return type

[**POSTMassUpdateResponseType**](POSTMassUpdateResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_mass_updater**
> CommonResponseType p_ut_mass_updater(bulk_key)

Stop mass action

This reference describes how to stop a mass action through the REST API. You can stop a mass action when its status is Pending or Processing. After you have stopped a mass action, you can get the [mass action result](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Mass_Updater/B_Get_Mass_Action_Result) to see details of the mass action.  - If you stop a mass action when its status is Pending, no response file is generated because no records have been processed.  - If you stop a mass action when its status is Processing, a response file is generated. You can check the response file to see which records have been processed and which have not. In the response file, the **Success** column has the value `Y` (successful) or `N` (failed) for processed records, and a blank value for unprocessed records.  Records that have already been processed when a mass action is stopped are not rolled back. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MassUpdaterApi.new

bulk_key = "bulk_key_example" # String | String of 32 characters that identifies a mass action. You get the bulk-key after [performing a mass action](https://knowledgecenter.zuora.com/BC_Developers/REST_API/B_REST_API_reference/Mass_Updater/A_Perform_Mass_Action) through the REST API. 


begin
  #Stop mass action
  result = api_instance.p_ut_mass_updater(bulk_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MassUpdaterApi->p_ut_mass_updater: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_key** | **String**| String of 32 characters that identifies a mass action. You get the bulk-key after [performing a mass action](https://knowledgecenter.zuora.com/BC_Developers/REST_API/B_REST_API_reference/Mass_Updater/A_Perform_Mass_Action) through the REST API.  | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



