# SwaggerClient::NotificationHistoryApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_callout_history_v_os**](NotificationHistoryApi.md#g_et_callout_history_v_os) | **GET** /notification-history/callout | Get callout notification histories
[**g_et_email_history_v_os**](NotificationHistoryApi.md#g_et_email_history_v_os) | **GET** /notification-history/email | Get email notification histories


# **g_et_callout_history_v_os**
> GETCalloutHistoryVOsType g_et_callout_history_v_os(opts)

Get callout notification histories

This REST API reference describes how to get a notification history for callouts.  See [Notifications and Callouts](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Notifications) and [Create and Edit Notifications](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Notifications/C_Create_Notifications) for more information. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::NotificationHistoryApi.new

opts = { 
  end_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The final date and time of records to be returned. Defaults to now. Use format yyyy-MM-ddTHH:mm:ss.
  start_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The initial date and time of records to be returned. Defaults to (end time - 1 day). Use format yyyy-MM-ddTHH:mm:ss.
  object_id: "object_id_example", # String | The ID of an object that triggered a callout notification.
  failed_only: true, # BOOLEAN | If `true`, only return failed records. If `false`, return all records in the given date range. The default value is `true`.
  event_category: "event_category_example", # String | Category of records to be returned by [event category](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Notification_History/Z_Event_Categories).
  include_response_content: true # BOOLEAN | 
}

begin
  #Get callout notification histories
  result = api_instance.g_et_callout_history_v_os(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NotificationHistoryApi->g_et_callout_history_v_os: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **end_time** | **DateTime**| The final date and time of records to be returned. Defaults to now. Use format yyyy-MM-ddTHH:mm:ss. | [optional] 
 **start_time** | **DateTime**| The initial date and time of records to be returned. Defaults to (end time - 1 day). Use format yyyy-MM-ddTHH:mm:ss. | [optional] 
 **object_id** | **String**| The ID of an object that triggered a callout notification. | [optional] 
 **failed_only** | **BOOLEAN**| If &#x60;true&#x60;, only return failed records. If &#x60;false&#x60;, return all records in the given date range. The default value is &#x60;true&#x60;. | [optional] 
 **event_category** | **String**| Category of records to be returned by [event category](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Notification_History/Z_Event_Categories). | [optional] 
 **include_response_content** | **BOOLEAN**|  | [optional] 

### Return type

[**GETCalloutHistoryVOsType**](GETCalloutHistoryVOsType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_email_history_v_os**
> GETEmailHistoryVOsType g_et_email_history_v_os(opts)

Get email notification histories

This REST API reference describes how to get a notification history for notification emails.  See [Notifications and Callouts](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Notifications) and [Create and Edit Notifications](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Notifications/C_Create_Notifications) for more information.  ## Notes Request parameters and their values may be appended with a \"?\" following the HTTPS GET request.  Additional request parameter are separated by \"&\".   For example:  `GET https://api.zuora.com/rest/v1/notification-history/email?startTime=2015-01-12T00:00:00&endTime=2015-01-15T00:00:00&failedOnly=false&eventCategory=1000&pageSize=1` 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::NotificationHistoryApi.new

opts = { 
  end_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The end date and time of records to be returned. Defaults to now. Use format yyyy-MM-ddTHH:mm:ss. The maximum date range (endTime - startTime) is three days.
  start_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The initial date and time of records to be returned. Defaults to (end time - 1 day). Use format yyyy-MM-ddTHH:mm:ss. The maximum date range (endTime - startTime) is three days.
  object_id: "object_id_example", # String | The Id of an object that triggered an email notification.
  failed_only: true, # BOOLEAN | If `true`, only returns failed records. When `false`, returns all records in the given date range. Defaults to `true` when not specified.
  event_category: "event_category_example" # String | Category of records to be returned by [event category](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Notification_History/Z_Event_Categories).
}

begin
  #Get email notification histories
  result = api_instance.g_et_email_history_v_os(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NotificationHistoryApi->g_et_email_history_v_os: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **end_time** | **DateTime**| The end date and time of records to be returned. Defaults to now. Use format yyyy-MM-ddTHH:mm:ss. The maximum date range (endTime - startTime) is three days. | [optional] 
 **start_time** | **DateTime**| The initial date and time of records to be returned. Defaults to (end time - 1 day). Use format yyyy-MM-ddTHH:mm:ss. The maximum date range (endTime - startTime) is three days. | [optional] 
 **object_id** | **String**| The Id of an object that triggered an email notification. | [optional] 
 **failed_only** | **BOOLEAN**| If &#x60;true&#x60;, only returns failed records. When &#x60;false&#x60;, returns all records in the given date range. Defaults to &#x60;true&#x60; when not specified. | [optional] 
 **event_category** | **String**| Category of records to be returned by [event category](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Notification_History/Z_Event_Categories). | [optional] 

### Return type

[**GETEmailHistoryVOsType**](GETEmailHistoryVOsType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



