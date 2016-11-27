# SwaggerClient::SubscriptionsApi

All URIs are relative to *https://rest.zuora.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_one_subscription**](SubscriptionsApi.md#g_et_one_subscription) | **GET** /subscriptions/{subscription-key} | Get subscriptions by key
[**g_et_subscription**](SubscriptionsApi.md#g_et_subscription) | **GET** /subscriptions/accounts/{account-key} | Get subscriptions by account
[**p_ost_subscription**](SubscriptionsApi.md#p_ost_subscription) | **POST** /subscriptions | Create subscription
[**p_ost_subscription_cancellation**](SubscriptionsApi.md#p_ost_subscription_cancellation) | **PUT** /subscriptions/{subscription-key}/cancel | Cancel subscription
[**p_ost_subscription_preview**](SubscriptionsApi.md#p_ost_subscription_preview) | **POST** /subscriptions/preview | Preview subscription
[**p_ut_renew_subscription**](SubscriptionsApi.md#p_ut_renew_subscription) | **PUT** /subscriptions/{subscription-key}/renew | Renew subscription
[**p_ut_subscription**](SubscriptionsApi.md#p_ut_subscription) | **PUT** /subscriptions/{subscription-key} | Update subscription
[**p_ut_subscription_resume**](SubscriptionsApi.md#p_ut_subscription_resume) | **PUT** /subscriptions/{subscription-key}/resume | Resume subscription
[**p_ut_subscription_suspend**](SubscriptionsApi.md#p_ut_subscription_suspend) | **PUT** /subscriptions/{subscription-key}/suspend | Suspend subscription
[**proxy_delete_subscription**](SubscriptionsApi.md#proxy_delete_subscription) | **DELETE** /object/subscription/{id} | CRUD: Delete Subscription
[**proxy_get_subscription**](SubscriptionsApi.md#proxy_get_subscription) | **GET** /object/subscription/{id} | CRUD: Retrieve Subscription
[**proxy_post_subscription**](SubscriptionsApi.md#proxy_post_subscription) | **POST** /object/subscription | CRUD: Create Subscription
[**proxy_put_subscription**](SubscriptionsApi.md#proxy_put_subscription) | **PUT** /object/subscription/{id} | CRUD: Update Subscription


# **g_et_one_subscription**
> GETSubscriptionTypeWithSuccess g_et_one_subscription(subscription_key, opts)

Get subscriptions by key

This REST API reference describes how to retrieve detailed information about a specified subscription in the latest version. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_key = "subscription_key_example" # String | Possible values are:   * a subscription number   * a subscription ID 

opts = { 
  charge_detail: "charge_detail_example" # String |  The segmented rate plan charges. When an amendment results in a change to a charge, Zuora creates a segmented rate plan charge. Use this field to track segment charges.  Possible values are:   * __last-segment__: (Default) The last rate plan charge on the subscription. The last rate plan charge is the last one in the order of time on the subscription rather than the most recent changed charge on the subscription.  * __current-segment__: The segmented charge that is active on today’s date (effectiveStartDate <= today’s date < effectiveEndDate).    * __all-segments__: All the segmented charges.   * __specific-segment&as-of-date=date__: The segmented charge that is active on a date you specified (effectiveStartDate <= specific date < effectiveEndDate). The format of the date is yyyy-mm-dd. 
}

begin
  #Get subscriptions by key
  result = api_instance.g_et_one_subscription(subscription_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->g_et_one_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_key** | **String**| Possible values are:   * a subscription number   * a subscription ID  | 
 **charge_detail** | **String**|  The segmented rate plan charges. When an amendment results in a change to a charge, Zuora creates a segmented rate plan charge. Use this field to track segment charges.  Possible values are:   * __last-segment__: (Default) The last rate plan charge on the subscription. The last rate plan charge is the last one in the order of time on the subscription rather than the most recent changed charge on the subscription.  * __current-segment__: The segmented charge that is active on today’s date (effectiveStartDate &lt;&#x3D; today’s date &lt; effectiveEndDate).    * __all-segments__: All the segmented charges.   * __specific-segment&amp;as-of-date&#x3D;date__: The segmented charge that is active on a date you specified (effectiveStartDate &lt;&#x3D; specific date &lt; effectiveEndDate). The format of the date is yyyy-mm-dd.  | [optional] 

### Return type

[**GETSubscriptionTypeWithSuccess**](GETSubscriptionTypeWithSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_subscription**
> GETSubscriptionWrapper g_et_subscription(account_key, opts)

Get subscriptions by account

Retrieves all subscriptions associated with the specified account. Zuora only returns the latest version of the subscriptions.  Subscription data is returned in reverse chronological order based on `updatedDate`. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

account_key = "account_key_example" # String |  Possible values are: * an account number * an account ID 

opts = { 
  charge_detail: "charge_detail_example" # String | The segmented rate plan charges.  When an amendment results in a change to a charge, Zuora creates a segmented rate plan charge. Use this field to track segment charges.  Possible values are:  * `last-segment`: (Default) The last rate plan charge on the subscription. The last rate plan charge is the last one in the order of time on the subscription rather than the most recent updated charge on the subscription. * `current-segment`: The segmented charge that is active on today’s date (**effectiveStartDate** <= today’s date < **effectiveEndDate**). * `all-segments`: All the segmented charges. * `specific-segment&as-of-date=date`: The segmented charge that is active on a date you specified (**effectiveStartDate** <= specific date < **effectiveEndDate**). The format of the date is yyyy-mm-dd. 
}

begin
  #Get subscriptions by account
  result = api_instance.g_et_subscription(account_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->g_et_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_key** | **String**|  Possible values are: * an account number * an account ID  | 
 **charge_detail** | **String**| The segmented rate plan charges.  When an amendment results in a change to a charge, Zuora creates a segmented rate plan charge. Use this field to track segment charges.  Possible values are:  * &#x60;last-segment&#x60;: (Default) The last rate plan charge on the subscription. The last rate plan charge is the last one in the order of time on the subscription rather than the most recent updated charge on the subscription. * &#x60;current-segment&#x60;: The segmented charge that is active on today’s date (**effectiveStartDate** &lt;&#x3D; today’s date &lt; **effectiveEndDate**). * &#x60;all-segments&#x60;: All the segmented charges. * &#x60;specific-segment&amp;as-of-date&#x3D;date&#x60;: The segmented charge that is active on a date you specified (**effectiveStartDate** &lt;&#x3D; specific date &lt; **effectiveEndDate**). The format of the date is yyyy-mm-dd.  | [optional] 

### Return type

[**GETSubscriptionWrapper**](GETSubscriptionWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_subscription**
> POSTSubscriptionResponseType p_ost_subscription(request, opts)

Create subscription

This REST API reference describes how to create a new subscription for an existing customer account.  ## Notes If invoiceCollect is `true`, the call will not return success = `true` unless the subscription, invoice, and payment are all successful.  Default values for **customerAcceptanceDate** and **serviceActivationDate** are set as follows.  |        | serviceActivationDate(SA) specified          | serviceActivationDate (SA) NOT specified  | | ------------- |:-------------:| -----:| | customerAcceptanceDate (CA) specified| SA uses value in the request call; CA uses value in the request call| CA uses value in the request call;SA uses CE as default | | customerAcceptanceDate (CA) NOT specified      | SA uses value in the request call; CA uses SA as default |   SA and CA use CE as default | 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

request = SwaggerClient::POSTSubscriptionType.new # POSTSubscriptionType | 

opts = { 
  zuora_version: "zuora_version_example" # String | The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
}

begin
  #Create subscription
  result = api_instance.p_ost_subscription(request, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->p_ost_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTSubscriptionType**](POSTSubscriptionType.md)|  | 
 **zuora_version** | **String**| The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information. | [optional] 

### Return type

[**POSTSubscriptionResponseType**](POSTSubscriptionResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_subscription_cancellation**
> POSTSubscriptionCancellationResponseType p_ost_subscription_cancellation(subscription_key, request, opts)

Cancel subscription

This REST API reference describes how to cancel an active subscription. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_key = "subscription_key_example" # String | Subscription number or ID. Subscription status must be `Active`.

request = SwaggerClient::POSTSubscriptionCancellationType.new # POSTSubscriptionCancellationType | 

opts = { 
  zuora_version: "zuora_version_example" # String | The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
}

begin
  #Cancel subscription
  result = api_instance.p_ost_subscription_cancellation(subscription_key, request, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->p_ost_subscription_cancellation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_key** | **String**| Subscription number or ID. Subscription status must be &#x60;Active&#x60;. | 
 **request** | [**POSTSubscriptionCancellationType**](POSTSubscriptionCancellationType.md)|  | 
 **zuora_version** | **String**| The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information. | [optional] 

### Return type

[**POSTSubscriptionCancellationResponseType**](POSTSubscriptionCancellationResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_subscription_preview**
> POSTSubscriptionPreviewResponseType p_ost_subscription_preview(request)

Preview subscription

The REST API reference describes how to create a new subscription in preview mode. This call does not require a valid customer account. It can be used to show potential new customers a preview of a subscription with complete details and charges before creating an account, or to let existing customers preview a subscription with all charges before committing.  ## Notes Default values for **customerAcceptanceDate** and **serviceActivationDate** are set as follows.  |        | serviceActivationDate (SA) specified          | serviceActivationDate (SA) NOT specified  | | ------------- |:-------------:| -----:| | customerAcceptanceDate (CA) specified      | SA uses value in the request call; CA uses value in the request call| CA uses value in the request call;SA uses CE as default | | customerAcceptanceDate (CA) NOT specified      | SA uses value in the request call; CA uses SA as default |   SA and CA use CE as default | 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

request = SwaggerClient::POSTSubscriptionPreviewType.new # POSTSubscriptionPreviewType | 


begin
  #Preview subscription
  result = api_instance.p_ost_subscription_preview(request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->p_ost_subscription_preview: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**POSTSubscriptionPreviewType**](POSTSubscriptionPreviewType.md)|  | 

### Return type

[**POSTSubscriptionPreviewResponseType**](POSTSubscriptionPreviewResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_renew_subscription**
> PUTRenewSubscriptionResponseType p_ut_renew_subscription(subscription_key, request, opts)

Renew subscription

Renews a termed subscription using existing renewal terms. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_key = "subscription_key_example" # String | Subscription number or ID

request = SwaggerClient::PUTRenewSubscriptionType.new # PUTRenewSubscriptionType | 

opts = { 
  zuora_version: "zuora_version_example" # String | The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
}

begin
  #Renew subscription
  result = api_instance.p_ut_renew_subscription(subscription_key, request, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->p_ut_renew_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_key** | **String**| Subscription number or ID | 
 **request** | [**PUTRenewSubscriptionType**](PUTRenewSubscriptionType.md)|  | 
 **zuora_version** | **String**| The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information. | [optional] 

### Return type

[**PUTRenewSubscriptionResponseType**](PUTRenewSubscriptionResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_subscription**
> PUTSubscriptionResponseType p_ut_subscription(subscription_key, request, opts)

Update subscription

Use this call to make the following kinds of changes to a subscription:   * Add a note   * Change the renewal term or auto-renewal flag   * Change the term length or change between evergreen and termed   * Add a new product rate plan   * Remove an existing subscription rate plan   * Change the quantity or price of an existing subscription rate plan  ## Notes * The Update Subscription call creates a new subscription, which has the old subscription number but a new subscription ID.  The old subscription is canceled but remains in the system. * In one request, this call can make:   * Up to 9 combined add, update, and remove changes   * No more than 1 change to terms & conditions * Updates are performed in the following sequence:   1. First change the notes on the existing subscription, if requested.   2. Then change the terms and conditions, if requested.   3. Then perform the remaining amendments based upon the effective dates specified. If multiple amendments have the same contract-effective dates, then execute adds before updates, and updates before removes. * The update operation is atomic. If any of the updates fails, the entire operation is rolled back.  ## Override a Tiered Price There are two ways you override a tiered price:  * Override a specific tier number For example: `tiers[{tier:1,price:8},{tier:2,price:6}]`  * Override the entire tier structure For example:  `tiers[{tier:1,price:8,startingUnit:1,endingUnit:100,priceFormat:\"FlatFee\"}, {tier:2,price:6,startingUnit:101,priceFormat:\"FlatFee\"}]`  If you just override a specific tier, do not include the `startingUnit` field in the request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_key = "subscription_key_example" # String | Subscription number or ID.

request = SwaggerClient::PUTSubscriptionType.new # PUTSubscriptionType | 

opts = { 
  zuora_version: "zuora_version_example" # String | The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
}

begin
  #Update subscription
  result = api_instance.p_ut_subscription(subscription_key, request, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->p_ut_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_key** | **String**| Subscription number or ID. | 
 **request** | [**PUTSubscriptionType**](PUTSubscriptionType.md)|  | 
 **zuora_version** | **String**| The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information. | [optional] 

### Return type

[**PUTSubscriptionResponseType**](PUTSubscriptionResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_subscription_resume**
> PUTSubscriptionResumeResponseType p_ut_subscription_resume(subscription_key, request, opts)

Resume subscription

This REST API reference describes how to resume a suspended subscription.   This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://suport.zuora.com).  

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_key = "subscription_key_example" # String | Subscription number or ID. Subscription status must be Active.

request = SwaggerClient::PUTSubscriptionResumeType.new # PUTSubscriptionResumeType | 

opts = { 
  zuora_version: "zuora_version_example" # String | The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
}

begin
  #Resume subscription
  result = api_instance.p_ut_subscription_resume(subscription_key, request, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->p_ut_subscription_resume: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_key** | **String**| Subscription number or ID. Subscription status must be Active. | 
 **request** | [**PUTSubscriptionResumeType**](PUTSubscriptionResumeType.md)|  | 
 **zuora_version** | **String**| The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information. | [optional] 

### Return type

[**PUTSubscriptionResumeResponseType**](PUTSubscriptionResumeResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_subscription_suspend**
> PUTSubscriptionSuspendResponseType p_ut_subscription_suspend(subscription_key, request, opts)

Suspend subscription

This REST API reference describes how to suspend an active subscription.   This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://suport.zuora.com). 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_key = "subscription_key_example" # String | Subscription number or ID. Subscription status must be Active.

request = SwaggerClient::PUTSubscriptionSuspendType.new # PUTSubscriptionSuspendType | 

opts = { 
  zuora_version: "zuora_version_example" # String | The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
}

begin
  #Suspend subscription
  result = api_instance.p_ut_subscription_suspend(subscription_key, request, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->p_ut_subscription_suspend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_key** | **String**| Subscription number or ID. Subscription status must be Active. | 
 **request** | [**PUTSubscriptionSuspendType**](PUTSubscriptionSuspendType.md)|  | 
 **zuora_version** | **String**| The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information. | [optional] 

### Return type

[**PUTSubscriptionSuspendResponseType**](PUTSubscriptionSuspendResponseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_delete_subscription**
> ProxyDeleteResponse proxy_delete_subscription(id)

CRUD: Delete Subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

id = "id_example" # String | Object id


begin
  #CRUD: Delete Subscription
  result = api_instance.proxy_delete_subscription(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->proxy_delete_subscription: #{e}"
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



# **proxy_get_subscription**
> ProxyGetSubscription proxy_get_subscription(id, opts)

CRUD: Retrieve Subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

id = "id_example" # String | Object id

opts = { 
  fields: "fields_example" # String | Object fields to return
}

begin
  #CRUD: Retrieve Subscription
  result = api_instance.proxy_get_subscription(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->proxy_get_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **fields** | **String**| Object fields to return | [optional] 

### Return type

[**ProxyGetSubscription**](ProxyGetSubscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_post_subscription**
> ProxyCreateOrModifyResponse proxy_post_subscription(create_request)

CRUD: Create Subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

create_request = SwaggerClient::ProxyCreateSubscription.new # ProxyCreateSubscription | 


begin
  #CRUD: Create Subscription
  result = api_instance.proxy_post_subscription(create_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->proxy_post_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_request** | [**ProxyCreateSubscription**](ProxyCreateSubscription.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **proxy_put_subscription**
> ProxyCreateOrModifyResponse proxy_put_subscription(id, modify_request)

CRUD: Update Subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

id = "id_example" # String | Object id

modify_request = SwaggerClient::ProxyModifySubscription.new # ProxyModifySubscription | 


begin
  #CRUD: Update Subscription
  result = api_instance.proxy_put_subscription(id, modify_request)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->proxy_put_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Object id | 
 **modify_request** | [**ProxyModifySubscription**](ProxyModifySubscription.md)|  | 

### Return type

[**ProxyCreateOrModifyResponse**](ProxyCreateOrModifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



