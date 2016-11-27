# SwaggerClient::ActionsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxy_action_pos_tamend**](ActionsApi.md#proxy_action_pos_tamend) | **POST** /action/amend | Amend
[**proxy_action_pos_tcreate**](ActionsApi.md#proxy_action_pos_tcreate) | **POST** /action/create | Create
[**proxy_action_pos_tdelete**](ActionsApi.md#proxy_action_pos_tdelete) | **POST** /action/delete | Delete
[**proxy_action_pos_texecute**](ActionsApi.md#proxy_action_pos_texecute) | **POST** /action/execute | Execute
[**proxy_action_pos_tgenerate**](ActionsApi.md#proxy_action_pos_tgenerate) | **POST** /action/generate | Generate
[**proxy_action_pos_tquery**](ActionsApi.md#proxy_action_pos_tquery) | **POST** /action/query | Query
[**proxy_action_pos_tquery_more**](ActionsApi.md#proxy_action_pos_tquery_more) | **POST** /action/queryMore | QueryMore
[**proxy_action_pos_tsubscribe**](ActionsApi.md#proxy_action_pos_tsubscribe) | **POST** /action/subscribe | Subscribe
[**proxy_action_pos_tupdate**](ActionsApi.md#proxy_action_pos_tupdate) | **POST** /action/update | Update


# **proxy_action_pos_tamend**
> ProxyActionamendResponse proxy_action_pos_tamend(amend_request)

Amend

 Use the amend call to change a subscription, such as upgrading the subscription.  The amend call:  * Supports the Amendment object * Is not an asynchronous process  ## Limits  ### Objects per Call  Up to ten Amendment objects.  ### System Rate Limits   1,000 calls per 10-minute time window per tenant.  If you approach or exceed this limit, you will receive a 429 error. Multi-threading causes you to approach this limit more quickly.  ### Errors  If one of your Amendment objects fails in a single amend call, then the entire call fails.  ## Required Fields  The following fields are always required for this call:  * `Amendment`.`Type` * `Amendment`.`Name` * `Amendment`.`SubscriptionId` 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActionsApi.new

amend_request = SwaggerClient::ProxyActionamendRequest.new # ProxyActionamendRequest | 


begin
  #Amend
  result = api_instance.proxy_action_pos_tamend(amend_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->proxy_action_pos_tamend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amend_request** | [**ProxyActionamendRequest**](ProxyActionamendRequest.md)|  | 

### Return type

[**ProxyActionamendResponse**](ProxyActionamendResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_action_pos_tcreate**
> ProxyActioncreateResponse proxy_action_pos_tcreate(create_request)

Create

Use the create call to create one or more objects of a specific type. You can specify different types in different create calls, but each create call must apply to only one type of object.  ## Limits  ### Objects per Call  50 objects are supported in a single call.  ### Rate Limiting  A maximum of 8,000 calls is supported per 10-minute time window per tenant.  If you approach or exceed this limit, you will receive a 429 error. Multi-threading causes you to approach this limit more quickly.  ## How to Use this Call  You can call create on an array of one or more zObjects. It returns an array of SaveResults, indicating the success or failure of creating each object. The following information applies to this call:  * You cannot pass in null zObjects. * You can pass in a maximum of 50 zObjects at a time. * All objects must be of the same type.  ### Using Create and Subscribe Calls  Both the create and subscribe calls will create a new account. However, there are differences between the calls.  Use the create call to create an account independent of a subscription.  Use the subscribe call to create the account with the subscription and the initial payment information. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActionsApi.new

create_request = SwaggerClient::ProxyActioncreateRequest.new # ProxyActioncreateRequest | 


begin
  #Create
  result = api_instance.proxy_action_pos_tcreate(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->proxy_action_pos_tcreate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyActioncreateRequest**](ProxyActioncreateRequest.md)|  | 

### Return type

[**ProxyActioncreateResponse**](ProxyActioncreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_action_pos_tdelete**
> ProxyActiondeleteResponse proxy_action_pos_tdelete(delete_request)

Delete

Deletes one or more objects of the same type. You can specify different types in different delete calls, but each delete call must apply only to one type of object.  The following information applies to this call:  * You will need to first determine the IDs for the objects you wish to delete. * You cannot pass in any null IDs. * All objects in a specific delete call must be of the same type.   ### Objects per Call 50 objects are supported in a single call.  ### Rate Limiting 1,000 calls are supported per 10-minute time window per tenant.  If you approach or exceed this limit, you will receive a 429 error. Multi-threading causes you to approach this limit more quickly. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActionsApi.new

delete_request = SwaggerClient::ProxyActiondeleteRequest.new # ProxyActiondeleteRequest | 


begin
  #Delete
  result = api_instance.proxy_action_pos_tdelete(delete_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->proxy_action_pos_tdelete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_request** | [**ProxyActiondeleteRequest**](ProxyActiondeleteRequest.md)|  | 

### Return type

[**ProxyActiondeleteResponse**](ProxyActiondeleteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_action_pos_texecute**
> ProxyActionexecuteResponse proxy_action_pos_texecute(execute_request)

Execute

Use the execute call to execute a process to split an invoice into multiple invoices. The original invoice must be in draft status. The resulting invoices are called split invoices.  **Note:** This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://support.zuora.com).   To split a draft invoice into multiple split invoices:  1. Use the create call to create a separate InvoiceSplitItem object for each split invoice that you want to create from the original draft invoice. 2. Use the create call to create a single InvoiceSplit object to collect all of the InvoiceSplitItem objects. 3. Use the execute call to split the draft invoice into multiple split invoices.  You need to create InvoiceSplitItem objects and an InvoiceSplit object before you can use the execute call.   * Supported objects: InvoiceSplit * Asynchronous process: yes 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActionsApi.new

execute_request = SwaggerClient::ProxyActionexecuteRequest.new # ProxyActionexecuteRequest | 


begin
  #Execute
  result = api_instance.proxy_action_pos_texecute(execute_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->proxy_action_pos_texecute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **execute_request** | [**ProxyActionexecuteRequest**](ProxyActionexecuteRequest.md)|  | 

### Return type

[**ProxyActionexecuteResponse**](ProxyActionexecuteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_action_pos_tgenerate**
> ProxyActiongenerateResponse proxy_action_pos_tgenerate(generate_request)

Generate

Generates an on-demand invoice for a specific customer. This is similar to creating an ad-hoc bill run for a specific customer account in the Zuora UI.  * Supported objects: Invoice * Asynchronous process: yes  The id of the generated invoice is returned in the response. If multiple invoices are generated, only the id of the first invoice generated is returned. This occurs when an account has multiple subscriptions with the [invoice subscription separately](https://knowledgecenter.zuora.com/BC_Subscription_Management/Subscriptions/B_Creating_Subscriptions/Invoicing_Subscriptions_Separately) option enabled.  ## Limits Rate limit: 8000 calls per 10-minute block, per-tenant  If you approach or exceed the limits, then you receive a 429 error. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActionsApi.new

generate_request = SwaggerClient::ProxyActiongenerateRequest.new # ProxyActiongenerateRequest | 


begin
  #Generate
  result = api_instance.proxy_action_pos_tgenerate(generate_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->proxy_action_pos_tgenerate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_request** | [**ProxyActiongenerateRequest**](ProxyActiongenerateRequest.md)|  | 

### Return type

[**ProxyActiongenerateResponse**](ProxyActiongenerateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_action_pos_tquery**
> ProxyActionqueryResponse proxy_action_pos_tquery(query_request)

Query

The query call sends a query expression by specifying the object to query, the fields to retrieve from that object, and any filters to determine whether a given object should be queried.   You can use ZOQL (Zuora Object Query Language) to construct those queries, passing them through the `queryString`.   Once the call is made, the API executes the query against the specified object and returns a query response object to your application. Your application can then iterate through rows in the query response to retrieve information.  ## Limitations   This call has the following limitations:  * All ZOQL keywords must be in lower case. * The number of records returned is limited to 2000 records 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActionsApi.new

query_request = SwaggerClient::ProxyActionqueryRequest.new # ProxyActionqueryRequest | 


begin
  #Query
  result = api_instance.proxy_action_pos_tquery(query_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->proxy_action_pos_tquery: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_request** | [**ProxyActionqueryRequest**](ProxyActionqueryRequest.md)|  | 

### Return type

[**ProxyActionqueryResponse**](ProxyActionqueryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_action_pos_tquery_more**
> ProxyActionqueryMoreResponse proxy_action_pos_tquery_more(query_more_request)

QueryMore

Use queryMore to request additional results from a previous query call. If your initial query call returns more than 2000 results, you can use queryMore to query for the additional results.   Any `queryLocator` results greater than 2,000, will only be stored by Zuora for 5 days before it is deleted.    This call sends a request for additional results from an initial query call. If the initial query call returns more than 2000 results, you can use the `queryLocator` returned from query to request the next set of results.   **Note:** Zuora expires queryMore cursors after 15 minutes of activity.   To use queryMore, you first construct a query call. By default, the query call will return up to 2000 results. If there are more than 2000 results, query will return a boolean `done`, which will be marked as `false`, and a `queryLocator`, which is a marker you will pass to queryMore to get the next set of results. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActionsApi.new

query_more_request = SwaggerClient::ProxyActionqueryMoreRequest.new # ProxyActionqueryMoreRequest | 


begin
  #QueryMore
  result = api_instance.proxy_action_pos_tquery_more(query_more_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->proxy_action_pos_tquery_more: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_more_request** | [**ProxyActionqueryMoreRequest**](ProxyActionqueryMoreRequest.md)|  | 

### Return type

[**ProxyActionqueryMoreResponse**](ProxyActionqueryMoreResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_action_pos_tsubscribe**
> ProxyActionsubscribeResponse proxy_action_pos_tsubscribe(subscribe_request)

Subscribe

 This call performs many actions.  Use the subscribe call to bundle information required to create at least one new subscription.   The call takes in an array of SubscribeRequests. Because it takes an array, you can submit a batch of subscription requests at once. You can create up to 50 different subscriptions in a single subscribe call.  This is a combined call that you can use to perform all of the following tasks in a single call:  * Create accounts * Create contacts * Create payment methods, including external payment options * Create an invoice for the subscription * Apply the first payment to a subscription  ## Object Limits  50 objects are supported in a single call.  ## System Rate Limits  A maximum of 3,000 calls is supported per 10-minute time window per tenant.  If you approach or exceed this limit, you will receive a 429 error. Multi-threading causes you to approach this limit more quickly.  ## Effective Date If the effective date is in the future, the invoices will not be generated, and there will be no invoice number.  ## Subscription Name, Number, and ID  ### Subscription Name and Number  The subscription name is a unique identifier for the subscription. If you do not specify a value for the name, Zuora will create one automatically. The automatically generated value is known as the subscription number, such as `A-S00000080`. You cannot change the subscription name or number after creating the subscription.   * **Subscription name**: The name that you set for the subscription. * **Subscription number**: The value generated by Zuora automatically if you do not specify a subscription name.   Both the subscription name and number must be unique. If they are not, an error will occur.  ### Subscription ID  The subscription ID is a 32-digit ID in the format 4028xxxx. This is also the unique identifier for a subscription. This value is automatically generated by the system and cannot be edited or updated, but it can be queried. One subscription can have only one subscription name or number, but it can have multiple IDs: Each version of a subscription has a different ID.  The Subscription object contains the fields `OriginalId` and `PreviousSubscriptionId`. `OriginalId` is the ID for the first version of a subscription. `PreviousSubscriptionId` is the ID of the version created immediately prior to the current version.  ## Subscription Preview  You can preview invoices that would be generated by the subscribe call.   ## Invoice Subscriptions Separately If you have enabled the invoice subscriptions separately feature, a subscribe call will generate an invoice for each subscription for every subscription where the field `IsInvoiceSeparate` is set to `true`.  If the invoice subscriptions separately feature is disabled, a subscribe call will generate a single invoice for all subscriptions.  See [Invoicing Subscriptions Separately](https://knowledgecenter.zuora.com/BC_Subscription_Management/Subscriptions/B_Creating_Subscriptions/Invoicing_Subscriptions_Separately) for more information.  ## Subscriptions and Draft Invoices  If a draft invoice that includes charges exists in a customer account, using the subscribe call to create a new subscription and generate an invoice will cause the new subscription to be added to the existing draft invoice. Zuora will then post the invoice.   ## When to Use Subscribe and Create Calls  You can use either the subscribe call or the create call to create the objects associated with a subscription (accounts, contacts, and so on). There are differences between these calls, however, and some situations are better for one or the other.  ### Use the Subscribe Call  The subscribe call bundles up all the information you need for a subscription. Use the subscribe call to create new subscriptions when you have all the information you need.  Subscribe calls cannot update BillTo, SoldTo, and Payment information objects cannot be updated if there is an existing account ID in the call. These objects are not supported in a subscribe call.  ### Use the Create Call  The create call is more useful when you want to develop in stages. For example, if you want to first create an account, then a contact, and so on. If you do not have all information available, use the create call. To create a subscription, you must activate the account from Draft status to Active by calling the subscribe call. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActionsApi.new

subscribe_request = SwaggerClient::ProxyActionsubscribeRequest.new # ProxyActionsubscribeRequest | 


begin
  #Subscribe
  result = api_instance.proxy_action_pos_tsubscribe(subscribe_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->proxy_action_pos_tsubscribe: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscribe_request** | [**ProxyActionsubscribeRequest**](ProxyActionsubscribeRequest.md)|  | 

### Return type

[**ProxyActionsubscribeResponse**](ProxyActionsubscribeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_action_pos_tupdate**
> ProxyActionupdateResponse proxy_action_pos_tupdate(update_request)

Update

 Updates the information in one or more objects of the same type. You can specify different types of objects in different update calls, but each specific update call must apply to only one type of object.  You can update an array of one or more zObjects. It returns an array of SaveResults, indicating the success or failure of updating each object. The following information applies to this call:  * You cannot pass in null zObjects. * You can pass in a maximum of 50 zObjects at a time. * All objects must be of the same type. * For each field in each object, you must determine that object's ID. Then populate the fields that you want update with the new information. * Zuora ignores unrecognized fields in update calls. For example, if an optional field is spelled incorrectly or a field that does not exist is specified, Zuora ignores the field and continues to process the call. No error message is returned for unrecognized fields.  ## Object Limits  50 objects are supported in a single call.  ## System Rate Limits   A maximum of 5,000 calls is supported per 10-minute time window per tenant.  If you approach or exceed this limit, you will receive a 429 error. Multi-threading causes you to approach this limit more quickly. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActionsApi.new

update_request = SwaggerClient::ProxyActionupdateRequest.new # ProxyActionupdateRequest | 


begin
  #Update
  result = api_instance.proxy_action_pos_tupdate(update_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActionsApi->proxy_action_pos_tupdate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_request** | [**ProxyActionupdateRequest**](ProxyActionupdateRequest.md)|  | 

### Return type

[**ProxyActionupdateResponse**](ProxyActionupdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



