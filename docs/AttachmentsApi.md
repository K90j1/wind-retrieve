# SwaggerClient::AttachmentsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_attachments**](AttachmentsApi.md#d_elete_attachments) | **DELETE** /attachments/{attachment-id} | Delete attachments
[**g_et_attachments**](AttachmentsApi.md#g_et_attachments) | **GET** /attachments/{attachment-id} | View attachments
[**g_et_attachments_response**](AttachmentsApi.md#g_et_attachments_response) | **GET** /attachments/{object-type}/{object-key} | View attachments list
[**p_ost_attachments**](AttachmentsApi.md#p_ost_attachments) | **POST** /attachments | Add attachments
[**p_ut_attachments**](AttachmentsApi.md#p_ut_attachments) | **PUT** /attachments/{attachment-id} | Edit attachments


# **d_elete_attachments**
> CommonResponseType d_elete_attachments(attachment_id)

Delete attachments

Use the Delete Attachment REST request to delete an attachment from a Zuora object.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AttachmentsApi.new

attachment_id = "attachment_id_example" # String | Id of the attachment to be deleted.


begin
  #Delete attachments
  result = api_instance.d_elete_attachments(attachment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentsApi->d_elete_attachments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| Id of the attachment to be deleted. | 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_attachments**
> GETAttachmentResponseType g_et_attachments(attachment_id)

View attachments

Use the View Attachment REST request to retrieve information about an attachment document.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AttachmentsApi.new

attachment_id = "attachment_id_example" # String | Id of the attachment you want to view.


begin
  #View attachments
  result = api_instance.g_et_attachments(attachment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentsApi->g_et_attachments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| Id of the attachment you want to view. | 

### Return type

[**GETAttachmentResponseType**](GETAttachmentResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_attachments_response**
> GETAttachmentsResponseType g_et_attachments_response(object_type, object_key)

View attachments list

Use the View Attachment REST request to get a list of attachments on an account, an invoice, or a subscription.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AttachmentsApi.new

object_type = "object_type_example" # String |  Specify one of the following: * Account  * Subscription  * Invoice 

object_key = "object_key_example" # String | Id of the attachment. This id is included in the response from the Add Attachment request.


begin
  #View attachments list
  result = api_instance.g_et_attachments_response(object_type, object_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentsApi->g_et_attachments_response: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_type** | **String**|  Specify one of the following: * Account  * Subscription  * Invoice  | 
 **object_key** | **String**| Id of the attachment. This id is included in the response from the Add Attachment request. | 

### Return type

[**GETAttachmentsResponseType**](GETAttachmentsResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_attachments**
> POSTAttachmentResponseType p_ost_attachments(associated_object_type, associated_object_key, request, opts)

Add attachments

Use the Add Attachment REST request with a multipart/form-data to attach a document file to an Account, a Subscription, or an Invoice.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AttachmentsApi.new

associated_object_type = "associated_object_type_example" # String | Specify one of the following values: Account, Subscription, or Invoice. 

associated_object_key = "associated_object_key_example" # String | For the Subscription type, specify the Subscription Number. An attachment is tied tied to the Subscription Number and thus viewable with every subscription version.  For Account and Invoice, specify the id. 

request = SwaggerClient::POSTAttachmentType.new # POSTAttachmentType | 

opts = { 
  description: "description_example" # String | Description of the attachment document. 
}

begin
  #Add attachments
  result = api_instance.p_ost_attachments(associated_object_type, associated_object_key, request, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentsApi->p_ost_attachments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associated_object_type** | **String**| Specify one of the following values: Account, Subscription, or Invoice.  | 
 **associated_object_key** | **String**| For the Subscription type, specify the Subscription Number. An attachment is tied tied to the Subscription Number and thus viewable with every subscription version.  For Account and Invoice, specify the id.  | 
 **request** | [**POSTAttachmentType**](POSTAttachmentType.md)|  | 
 **description** | **String**| Description of the attachment document.  | [optional] 

### Return type

[**POSTAttachmentResponseType**](POSTAttachmentResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_attachments**
> CommonResponseType p_ut_attachments(attachment_id, opts)

Edit attachments

Use the Edit Attachment REST request to make changes to the descriptive fields of an attachment, such as the description and the file name. You cannot change the actual content of the attached file in Zuora. If you need to change the actual content, you need to delete the attachment and add the updated file as a new attachment.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AttachmentsApi.new

attachment_id = "attachment_id_example" # String | Id of the attachment to be updated.

opts = { 
  request: SwaggerClient::PUTAttachmentType.new # PUTAttachmentType | 
}

begin
  #Edit attachments
  result = api_instance.p_ut_attachments(attachment_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentsApi->p_ut_attachments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| Id of the attachment to be updated. | 
 **request** | [**PUTAttachmentType**](PUTAttachmentType.md)|  | [optional] 

### Return type

[**CommonResponseType**](CommonResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



