=begin
#Zuora API Reference

# # Introduction  Welcome to the reference for the Zuora REST API!  <a href=\"http://en.wikipedia.org/wiki/REST_API\" target=\"_blank\">REST</a> is a web-service protocol that lends itself to rapid development by using everyday HTTP and JSON technology.  The Zuora REST API provides a broad set of operations and resources that:  * Enable Web Storefront integration from your website. * Support self-service subscriber sign-ups and account management. * Process revenue schedules through custom revenue rule models. * Enable manipulation of most objects in the Zuora Object Model.  ## Endpoints  The Zuora REST API is provided via the following endpoints.  | Tenant                 | Base URL for REST Endpoints                                                                                                                                         | |-------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------| | Production | https://rest.zuora.com/v1                                                                                                                                           | | API Sandbox    | https://rest.apisandbox.zuora.com/v1                                                                                                                                |  The production endpoint provides access to your live user data. The API Sandbox tenant is a good place to test your code without affecting real-world data. To use it, you must be provisioned with an API Sandbox tenant - your Zuora representative can help you if needed.  ## Access to the API  If you have a Zuora tenant, you already have access to the API.  If you don't have a Zuora tenant, go to <a href=\"https://www.zuora.com/resource/zuora-test-drive\" target=\"_blank\">https://www.zuora.com/resource/zuora-test-drive</a> and sign up for a Production Test Drive tenant. The tenant comes with seed data, such as a sample product catalog.   We recommend that you <a href=\"https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/Manage_Users/Create_an_API_User\" target=\"_blank\">create an API user</a> specifically for making API calls. Don't log in to the Zuora UI with this account. Logging in to the UI enables a security feature that periodically expires the account's password, which may eventually cause authentication failures with the API. Note that a user role does not have write access to Zuora REST services unless it has the API Write Access permission as described in those instructions.   # Authentication  There are three ways to authenticate:   *   Use username and password. Include authentication with each request in the header:      *   `apiAccessKeyId`      *   `apiSecretAccessKey`      *   `entityId` or `entityName` (Only for [Zuora Multi-entity](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity \"Multi-entity\"). See \"Entity Id and Entity Name\" below for more information.)    * Use an authorization cookie. The  cookie authorizes the user to make calls to the REST API for the duration specified in  **Administration > Security Policies > Session timeout**. The cookie expiration time is reset with this duration after every call to the REST API. To obtain a cookie, call the REST  `connections` resource with the following API user information:     *   ID     *   password     *   entity Id or entity name (Only for [Zuora Multi-entity](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity \"Multi-entity\"). See \"Entity Id and Entity Name\" below for more information.)    *   For CORS-enabled APIs only: Include a 'single-use' token in the request header, which re-authenticates the user with each request. See below for more details.   ## Entity Id and Entity Name  The `entityId` and `entityName`  parameters are only used for  [Zuora Multi-entity](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity).  The  `entityId` and `entityName` parameters specify the Id and the  [name of the entity](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity/B_Introduction_to_Entity_and_Entity_Hierarchy#Name_and_Display_Name \"Introduction to Entity and Entity Hierarchy\") that you want to access, respectively. Note that you must have permission to access the entity. You can get the entity Id and entity name through the REST GET Entities call.  You can specify either the  `entityId` or `entityName` parameter in the authentication to access and view an entity.  *   If both `entityId` and `entityName` are specified in the authentication, an error occurs.  *   If neither  `entityId` nor  `entityName` is specified in the authentication, you will log in to the entity in which your user account is created.   See [API User Authentication](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity/A_Overview_of_Multi-entity#API_User_Authentication \"Zuora Multi-entity\") for more information.  ## Token Authentication for CORS-Enabled APIs  The CORS mechanism enables REST API calls to Zuora to be made directly from your customer's browser, with all credit card and security information transmitted directly to Zuora. This minimizes your PCI compliance burden, allows you to implement advanced validation on your payment forms, and makes your payment forms look just like any other part of your website.  For security reasons, instead of using cookies, an API request via CORS uses **tokens** for authentication.  The token method of authentication is only designed for use with requests that must originate from your customer's browser; **it should not be considered a replacement to the existing cookie authentication** mechanism.  See [Zuora CORS REST ](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics/G_CORS_REST \"Zuora CORS REST\")for details on how CORS works and how you can begin to implement customer calls to the Zuora REST APIs. See  [HMAC Signatures](/BC_Developers/REST_API/B_REST_API_reference/HMAC_Signatures \"HMAC Signatures\") for details on the HMAC method that returns the authentication token.    # Requests and Responses   ## Request IDs  As a general rule, when asked to supply a \"key\" for an account or subscription (accountKey, account-key, subscriptionKey, subscription-key), you can provide either the actual ID or the number of the entity.  ## HTTP Request Body  Most of the parameters and data accompanying your requests will be contained in the body of the HTTP request.  The Zuora REST API accepts JSON in the HTTP request body.  No other data format (e.g., XML) is supported.   ## Testing a Request  Use a third party client, such as [curl](https://curl.haxx.se/ \"curl\"), [Postman](https://www.getpostman.com/ \"Postman\"),  or [Advanced REST Client](https://advancedrestclient.com/ \"Advanced REST Client\"), to test the Zuora REST API.  You can test the Zuora REST API from the Zuora API Sandbox or Production tenants. If connecting to Production, bear in mind that you are working with your live production data, not sample data or test data.  ## Testing with Credit Cards  Sooner or later it will probably be necessary to test some transactions that involve credit cards. For suggestions on how to handle this, see [Going Live With Your Payment Gateway](https://knowledgecenter.zuora.com/CB_Billing/M_Payment_Gateways/C_Managing_Payment_Gateways/B_Going_Live_Payment_Gateways#Testing_with_Credit_Cards \"C_Zuora_User_Guides/A_Billing_and_Payments/M_Payment_Gateways/C_Managing_Payment_Gateways/B_Going_Live_Payment_Gateways#Testing_with_Credit_Cards\").       ## Error Handling  Responses and error codes are detailed in [Responses and errors](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics/3_Responses_and_errors \"Responses and errors\").    # Pagination  When retrieving information (using GET methods), the optional `pageSize` query parameter sets the maximum number of rows to return in a response. The maximum is `40`; larger values are treated as `40`. If this value is empty or invalid, `pageSize` typically defaults to `10`.  The default value for the maximum number of rows retrieved can be overridden at the method level.  If more rows are available, the response will include a `nextPage` element, which contains a URL for requesting the next page.  If this value is not provided, no more rows are available. No \"previous page\" element is explicitly provided; to support backward paging, use the previous call.  ## Array Size  For data items that are not paginated, the REST API supports arrays of up to 300 rows.  Thus, for instance, repeated pagination can retrieve thousands of customer accounts, but within any account an array of no more than 300 rate plans is returned.   # API Versions  The Zuora REST API are version controlled. Versioning ensures that Zuora REST API changes are backward compatible. Zuora uses a major and minor version nomenclature to manage changes. By specifying a version in a REST request, you can get expected responses regardless of future changes to the API.   ## Major Version  The major version number of the REST API appears in the REST URL. Currently, Zuora only supports the **v1** major version. For example,  `POST https://rest.zuora.com/v1/subscriptions` .   ## Minor Version  Zuora uses minor versions for the REST API to control small changes. For example, a field in a REST method is deprecated and a new field is used to replace it.   Some fields in the REST methods are supported as of minor versions. If a field is not noted with a minor version, this field is available for all minor versions. If a field is noted with a minor version, this field is in version control. You must specify the supported minor version in the request header to process without an error.   If a field is in version control, it is either with a minimum minor version or a maximum minor version, or both of them. You can only use this field with the minor version between the minimum and the maximum minor versions. For example, the  `invoiceCollect` field in the POST Subscription method is in version control and its maximum minor version is 189.0. You can only use this field with the minor version 189.0 or earlier.  The supported minor versions are not serial, see [Zuora REST API Minor Version History](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics/Zuora_REST_API_Minor_Version_History \"Zuora REST API Minor Version History\") for the fields and their supported minor versions. In our REST API documentation, if a field or feature requires a minor version number, we note that in the field description.  You only need to specify the version number when you use the fields require a minor version. To specify the minor version, set the `zuora-version` parameter to the minor version number in the request header for the request call. For example, the `collect` field is in 196.0 minor version. If you want to use this field for the POST Subscription method, set the  `zuora-version` parameter to `196.0` in the request header. The `zuora-version` parameter is case sensitive.   For all the REST API fields, by default, if the minor version is not specified in the request header, Zuora will use the minimum minor version of the REST API to avoid breaking your integration.     # Zuora Object Model The following diagram presents a high-level view of the key Zuora objects. Click the image to open it in a new tab to resize it.  <a href=\"https://www.zuora.com/wp-content/uploads/2016/11/ZuoraERD.jpeg\" target=\"_blank\"><img src=\"https://www.zuora.com/wp-content/uploads/2016/11/ZuoraERD.jpeg\" alt=\"Zuora Object Model Diagram\"></a> 

OpenAPI spec version: 1.0.0
Contact: docs@zuora.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module SwaggerClient
  class SubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get subscriptions by key
    # This REST API reference describes how to retrieve detailed information about a specified subscription in the latest version. 
    # @param subscription_key Possible values are:   * a subscription number   * a subscription ID 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :charge_detail  The segmented rate plan charges. When an amendment results in a change to a charge, Zuora creates a segmented rate plan charge. Use this field to track segment charges.  Possible values are:   * __last-segment__: (Default) The last rate plan charge on the subscription. The last rate plan charge is the last one in the order of time on the subscription rather than the most recent changed charge on the subscription.  * __current-segment__: The segmented charge that is active on today’s date (effectiveStartDate &lt;&#x3D; today’s date &lt; effectiveEndDate).    * __all-segments__: All the segmented charges.   * __specific-segment&amp;as-of-date&#x3D;date__: The segmented charge that is active on a date you specified (effectiveStartDate &lt;&#x3D; specific date &lt; effectiveEndDate). The format of the date is yyyy-mm-dd. 
    # @return [GETSubscriptionTypeWithSuccess]
    def g_et_one_subscription(subscription_key, opts = {})
      data, _status_code, _headers = g_et_one_subscription_with_http_info(subscription_key, opts)
      return data
    end

    # Get subscriptions by key
    # This REST API reference describes how to retrieve detailed information about a specified subscription in the latest version. 
    # @param subscription_key Possible values are:   * a subscription number   * a subscription ID 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :charge_detail  The segmented rate plan charges. When an amendment results in a change to a charge, Zuora creates a segmented rate plan charge. Use this field to track segment charges.  Possible values are:   * __last-segment__: (Default) The last rate plan charge on the subscription. The last rate plan charge is the last one in the order of time on the subscription rather than the most recent changed charge on the subscription.  * __current-segment__: The segmented charge that is active on today’s date (effectiveStartDate &lt;&#x3D; today’s date &lt; effectiveEndDate).    * __all-segments__: All the segmented charges.   * __specific-segment&amp;as-of-date&#x3D;date__: The segmented charge that is active on a date you specified (effectiveStartDate &lt;&#x3D; specific date &lt; effectiveEndDate). The format of the date is yyyy-mm-dd. 
    # @return [Array<(GETSubscriptionTypeWithSuccess, Fixnum, Hash)>] GETSubscriptionTypeWithSuccess data, response status code and response headers
    def g_et_one_subscription_with_http_info(subscription_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.g_et_one_subscription ..."
      end
      # verify the required parameter 'subscription_key' is set
      fail ArgumentError, "Missing the required parameter 'subscription_key' when calling SubscriptionsApi.g_et_one_subscription" if subscription_key.nil?
      # resource path
      local_var_path = "/subscriptions/{subscription-key}".sub('{format}','json').sub('{' + 'subscription-key' + '}', subscription_key.to_s)

      # query parameters
      query_params = {}
      query_params[:'charge-detail'] = opts[:'charge_detail'] if !opts[:'charge_detail'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GETSubscriptionTypeWithSuccess')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#g_et_one_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get subscriptions by account
    # Retrieves all subscriptions associated with the specified account. Zuora only returns the latest version of the subscriptions.  Subscription data is returned in reverse chronological order based on `updatedDate`. 
    # @param account_key  Possible values are: * an account number * an account ID 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :charge_detail The segmented rate plan charges.  When an amendment results in a change to a charge, Zuora creates a segmented rate plan charge. Use this field to track segment charges.  Possible values are:  * &#x60;last-segment&#x60;: (Default) The last rate plan charge on the subscription. The last rate plan charge is the last one in the order of time on the subscription rather than the most recent updated charge on the subscription. * &#x60;current-segment&#x60;: The segmented charge that is active on today’s date (**effectiveStartDate** &lt;&#x3D; today’s date &lt; **effectiveEndDate**). * &#x60;all-segments&#x60;: All the segmented charges. * &#x60;specific-segment&amp;as-of-date&#x3D;date&#x60;: The segmented charge that is active on a date you specified (**effectiveStartDate** &lt;&#x3D; specific date &lt; **effectiveEndDate**). The format of the date is yyyy-mm-dd. 
    # @return [GETSubscriptionWrapper]
    def g_et_subscription(account_key, opts = {})
      data, _status_code, _headers = g_et_subscription_with_http_info(account_key, opts)
      return data
    end

    # Get subscriptions by account
    # Retrieves all subscriptions associated with the specified account. Zuora only returns the latest version of the subscriptions.  Subscription data is returned in reverse chronological order based on &#x60;updatedDate&#x60;. 
    # @param account_key  Possible values are: * an account number * an account ID 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :charge_detail The segmented rate plan charges.  When an amendment results in a change to a charge, Zuora creates a segmented rate plan charge. Use this field to track segment charges.  Possible values are:  * &#x60;last-segment&#x60;: (Default) The last rate plan charge on the subscription. The last rate plan charge is the last one in the order of time on the subscription rather than the most recent updated charge on the subscription. * &#x60;current-segment&#x60;: The segmented charge that is active on today’s date (**effectiveStartDate** &lt;&#x3D; today’s date &lt; **effectiveEndDate**). * &#x60;all-segments&#x60;: All the segmented charges. * &#x60;specific-segment&amp;as-of-date&#x3D;date&#x60;: The segmented charge that is active on a date you specified (**effectiveStartDate** &lt;&#x3D; specific date &lt; **effectiveEndDate**). The format of the date is yyyy-mm-dd. 
    # @return [Array<(GETSubscriptionWrapper, Fixnum, Hash)>] GETSubscriptionWrapper data, response status code and response headers
    def g_et_subscription_with_http_info(account_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.g_et_subscription ..."
      end
      # verify the required parameter 'account_key' is set
      fail ArgumentError, "Missing the required parameter 'account_key' when calling SubscriptionsApi.g_et_subscription" if account_key.nil?
      # resource path
      local_var_path = "/subscriptions/accounts/{account-key}".sub('{format}','json').sub('{' + 'account-key' + '}', account_key.to_s)

      # query parameters
      query_params = {}
      query_params[:'charge-detail'] = opts[:'charge_detail'] if !opts[:'charge_detail'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GETSubscriptionWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#g_et_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create subscription
    # This REST API reference describes how to create a new subscription for an existing customer account.  ## Notes If invoiceCollect is `true`, the call will not return success = `true` unless the subscription, invoice, and payment are all successful.  Default values for **customerAcceptanceDate** and **serviceActivationDate** are set as follows.  |        | serviceActivationDate(SA) specified          | serviceActivationDate (SA) NOT specified  | | ------------- |:-------------:| -----:| | customerAcceptanceDate (CA) specified| SA uses value in the request call; CA uses value in the request call| CA uses value in the request call;SA uses CE as default | | customerAcceptanceDate (CA) NOT specified      | SA uses value in the request call; CA uses SA as default |   SA and CA use CE as default | 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [POSTSubscriptionResponseType]
    def p_ost_subscription(request, opts = {})
      data, _status_code, _headers = p_ost_subscription_with_http_info(request, opts)
      return data
    end

    # Create subscription
    # This REST API reference describes how to create a new subscription for an existing customer account.  ## Notes If invoiceCollect is &#x60;true&#x60;, the call will not return success &#x3D; &#x60;true&#x60; unless the subscription, invoice, and payment are all successful.  Default values for **customerAcceptanceDate** and **serviceActivationDate** are set as follows.  |        | serviceActivationDate(SA) specified          | serviceActivationDate (SA) NOT specified  | | ------------- |:-------------:| -----:| | customerAcceptanceDate (CA) specified| SA uses value in the request call; CA uses value in the request call| CA uses value in the request call;SA uses CE as default | | customerAcceptanceDate (CA) NOT specified      | SA uses value in the request call; CA uses SA as default |   SA and CA use CE as default | 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [Array<(POSTSubscriptionResponseType, Fixnum, Hash)>] POSTSubscriptionResponseType data, response status code and response headers
    def p_ost_subscription_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.p_ost_subscription ..."
      end
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SubscriptionsApi.p_ost_subscription" if request.nil?
      # resource path
      local_var_path = "/subscriptions".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'zuora-version'] = opts[:'zuora_version'] if !opts[:'zuora_version'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'POSTSubscriptionResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#p_ost_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel subscription
    # This REST API reference describes how to cancel an active subscription. 
    # @param subscription_key Subscription number or ID. Subscription status must be &#x60;Active&#x60;.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [POSTSubscriptionCancellationResponseType]
    def p_ost_subscription_cancellation(subscription_key, request, opts = {})
      data, _status_code, _headers = p_ost_subscription_cancellation_with_http_info(subscription_key, request, opts)
      return data
    end

    # Cancel subscription
    # This REST API reference describes how to cancel an active subscription. 
    # @param subscription_key Subscription number or ID. Subscription status must be &#x60;Active&#x60;.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [Array<(POSTSubscriptionCancellationResponseType, Fixnum, Hash)>] POSTSubscriptionCancellationResponseType data, response status code and response headers
    def p_ost_subscription_cancellation_with_http_info(subscription_key, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.p_ost_subscription_cancellation ..."
      end
      # verify the required parameter 'subscription_key' is set
      fail ArgumentError, "Missing the required parameter 'subscription_key' when calling SubscriptionsApi.p_ost_subscription_cancellation" if subscription_key.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SubscriptionsApi.p_ost_subscription_cancellation" if request.nil?
      # resource path
      local_var_path = "/subscriptions/{subscription-key}/cancel".sub('{format}','json').sub('{' + 'subscription-key' + '}', subscription_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'zuora-version'] = opts[:'zuora_version'] if !opts[:'zuora_version'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'POSTSubscriptionCancellationResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#p_ost_subscription_cancellation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Preview subscription
    # The REST API reference describes how to create a new subscription in preview mode. This call does not require a valid customer account. It can be used to show potential new customers a preview of a subscription with complete details and charges before creating an account, or to let existing customers preview a subscription with all charges before committing.  ## Notes Default values for **customerAcceptanceDate** and **serviceActivationDate** are set as follows.  |        | serviceActivationDate (SA) specified          | serviceActivationDate (SA) NOT specified  | | ------------- |:-------------:| -----:| | customerAcceptanceDate (CA) specified      | SA uses value in the request call; CA uses value in the request call| CA uses value in the request call;SA uses CE as default | | customerAcceptanceDate (CA) NOT specified      | SA uses value in the request call; CA uses SA as default |   SA and CA use CE as default | 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [POSTSubscriptionPreviewResponseType]
    def p_ost_subscription_preview(request, opts = {})
      data, _status_code, _headers = p_ost_subscription_preview_with_http_info(request, opts)
      return data
    end

    # Preview subscription
    # The REST API reference describes how to create a new subscription in preview mode. This call does not require a valid customer account. It can be used to show potential new customers a preview of a subscription with complete details and charges before creating an account, or to let existing customers preview a subscription with all charges before committing.  ## Notes Default values for **customerAcceptanceDate** and **serviceActivationDate** are set as follows.  |        | serviceActivationDate (SA) specified          | serviceActivationDate (SA) NOT specified  | | ------------- |:-------------:| -----:| | customerAcceptanceDate (CA) specified      | SA uses value in the request call; CA uses value in the request call| CA uses value in the request call;SA uses CE as default | | customerAcceptanceDate (CA) NOT specified      | SA uses value in the request call; CA uses SA as default |   SA and CA use CE as default | 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(POSTSubscriptionPreviewResponseType, Fixnum, Hash)>] POSTSubscriptionPreviewResponseType data, response status code and response headers
    def p_ost_subscription_preview_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.p_ost_subscription_preview ..."
      end
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SubscriptionsApi.p_ost_subscription_preview" if request.nil?
      # resource path
      local_var_path = "/subscriptions/preview".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'POSTSubscriptionPreviewResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#p_ost_subscription_preview\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Renew subscription
    # Renews a termed subscription using existing renewal terms. 
    # @param subscription_key Subscription number or ID
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [PUTRenewSubscriptionResponseType]
    def p_ut_renew_subscription(subscription_key, request, opts = {})
      data, _status_code, _headers = p_ut_renew_subscription_with_http_info(subscription_key, request, opts)
      return data
    end

    # Renew subscription
    # Renews a termed subscription using existing renewal terms. 
    # @param subscription_key Subscription number or ID
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [Array<(PUTRenewSubscriptionResponseType, Fixnum, Hash)>] PUTRenewSubscriptionResponseType data, response status code and response headers
    def p_ut_renew_subscription_with_http_info(subscription_key, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.p_ut_renew_subscription ..."
      end
      # verify the required parameter 'subscription_key' is set
      fail ArgumentError, "Missing the required parameter 'subscription_key' when calling SubscriptionsApi.p_ut_renew_subscription" if subscription_key.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SubscriptionsApi.p_ut_renew_subscription" if request.nil?
      # resource path
      local_var_path = "/subscriptions/{subscription-key}/renew".sub('{format}','json').sub('{' + 'subscription-key' + '}', subscription_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'zuora-version'] = opts[:'zuora_version'] if !opts[:'zuora_version'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PUTRenewSubscriptionResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#p_ut_renew_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update subscription
    # Use this call to make the following kinds of changes to a subscription:   * Add a note   * Change the renewal term or auto-renewal flag   * Change the term length or change between evergreen and termed   * Add a new product rate plan   * Remove an existing subscription rate plan   * Change the quantity or price of an existing subscription rate plan  ## Notes * The Update Subscription call creates a new subscription, which has the old subscription number but a new subscription ID.  The old subscription is canceled but remains in the system. * In one request, this call can make:   * Up to 9 combined add, update, and remove changes   * No more than 1 change to terms & conditions * Updates are performed in the following sequence:   1. First change the notes on the existing subscription, if requested.   2. Then change the terms and conditions, if requested.   3. Then perform the remaining amendments based upon the effective dates specified. If multiple amendments have the same contract-effective dates, then execute adds before updates, and updates before removes. * The update operation is atomic. If any of the updates fails, the entire operation is rolled back.  ## Override a Tiered Price There are two ways you override a tiered price:  * Override a specific tier number For example: `tiers[{tier:1,price:8},{tier:2,price:6}]`  * Override the entire tier structure For example:  `tiers[{tier:1,price:8,startingUnit:1,endingUnit:100,priceFormat:\"FlatFee\"}, {tier:2,price:6,startingUnit:101,priceFormat:\"FlatFee\"}]`  If you just override a specific tier, do not include the `startingUnit` field in the request. 
    # @param subscription_key Subscription number or ID.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [PUTSubscriptionResponseType]
    def p_ut_subscription(subscription_key, request, opts = {})
      data, _status_code, _headers = p_ut_subscription_with_http_info(subscription_key, request, opts)
      return data
    end

    # Update subscription
    # Use this call to make the following kinds of changes to a subscription:   * Add a note   * Change the renewal term or auto-renewal flag   * Change the term length or change between evergreen and termed   * Add a new product rate plan   * Remove an existing subscription rate plan   * Change the quantity or price of an existing subscription rate plan  ## Notes * The Update Subscription call creates a new subscription, which has the old subscription number but a new subscription ID.  The old subscription is canceled but remains in the system. * In one request, this call can make:   * Up to 9 combined add, update, and remove changes   * No more than 1 change to terms &amp; conditions * Updates are performed in the following sequence:   1. First change the notes on the existing subscription, if requested.   2. Then change the terms and conditions, if requested.   3. Then perform the remaining amendments based upon the effective dates specified. If multiple amendments have the same contract-effective dates, then execute adds before updates, and updates before removes. * The update operation is atomic. If any of the updates fails, the entire operation is rolled back.  ## Override a Tiered Price There are two ways you override a tiered price:  * Override a specific tier number For example: &#x60;tiers[{tier:1,price:8},{tier:2,price:6}]&#x60;  * Override the entire tier structure For example:  &#x60;tiers[{tier:1,price:8,startingUnit:1,endingUnit:100,priceFormat:\&quot;FlatFee\&quot;}, {tier:2,price:6,startingUnit:101,priceFormat:\&quot;FlatFee\&quot;}]&#x60;  If you just override a specific tier, do not include the &#x60;startingUnit&#x60; field in the request. 
    # @param subscription_key Subscription number or ID.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [Array<(PUTSubscriptionResponseType, Fixnum, Hash)>] PUTSubscriptionResponseType data, response status code and response headers
    def p_ut_subscription_with_http_info(subscription_key, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.p_ut_subscription ..."
      end
      # verify the required parameter 'subscription_key' is set
      fail ArgumentError, "Missing the required parameter 'subscription_key' when calling SubscriptionsApi.p_ut_subscription" if subscription_key.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SubscriptionsApi.p_ut_subscription" if request.nil?
      # resource path
      local_var_path = "/subscriptions/{subscription-key}".sub('{format}','json').sub('{' + 'subscription-key' + '}', subscription_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'zuora-version'] = opts[:'zuora_version'] if !opts[:'zuora_version'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PUTSubscriptionResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#p_ut_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resume subscription
    # This REST API reference describes how to resume a suspended subscription.   This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://suport.zuora.com).  
    # @param subscription_key Subscription number or ID. Subscription status must be Active.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [PUTSubscriptionResumeResponseType]
    def p_ut_subscription_resume(subscription_key, request, opts = {})
      data, _status_code, _headers = p_ut_subscription_resume_with_http_info(subscription_key, request, opts)
      return data
    end

    # Resume subscription
    # This REST API reference describes how to resume a suspended subscription.   This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://suport.zuora.com).  
    # @param subscription_key Subscription number or ID. Subscription status must be Active.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [Array<(PUTSubscriptionResumeResponseType, Fixnum, Hash)>] PUTSubscriptionResumeResponseType data, response status code and response headers
    def p_ut_subscription_resume_with_http_info(subscription_key, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.p_ut_subscription_resume ..."
      end
      # verify the required parameter 'subscription_key' is set
      fail ArgumentError, "Missing the required parameter 'subscription_key' when calling SubscriptionsApi.p_ut_subscription_resume" if subscription_key.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SubscriptionsApi.p_ut_subscription_resume" if request.nil?
      # resource path
      local_var_path = "/subscriptions/{subscription-key}/resume".sub('{format}','json').sub('{' + 'subscription-key' + '}', subscription_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'zuora-version'] = opts[:'zuora_version'] if !opts[:'zuora_version'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PUTSubscriptionResumeResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#p_ut_subscription_resume\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Suspend subscription
    # This REST API reference describes how to suspend an active subscription.   This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://suport.zuora.com). 
    # @param subscription_key Subscription number or ID. Subscription status must be Active.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [PUTSubscriptionSuspendResponseType]
    def p_ut_subscription_suspend(subscription_key, request, opts = {})
      data, _status_code, _headers = p_ut_subscription_suspend_with_http_info(subscription_key, request, opts)
      return data
    end

    # Suspend subscription
    # This REST API reference describes how to suspend an active subscription.   This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://suport.zuora.com). 
    # @param subscription_key Subscription number or ID. Subscription status must be Active.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :zuora_version The minor version of the Zuora REST API. You only need to set this parameter if you use the __collect__ or __invoice__ field. See [REST API Basics](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics) for more information.
    # @return [Array<(PUTSubscriptionSuspendResponseType, Fixnum, Hash)>] PUTSubscriptionSuspendResponseType data, response status code and response headers
    def p_ut_subscription_suspend_with_http_info(subscription_key, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.p_ut_subscription_suspend ..."
      end
      # verify the required parameter 'subscription_key' is set
      fail ArgumentError, "Missing the required parameter 'subscription_key' when calling SubscriptionsApi.p_ut_subscription_suspend" if subscription_key.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SubscriptionsApi.p_ut_subscription_suspend" if request.nil?
      # resource path
      local_var_path = "/subscriptions/{subscription-key}/suspend".sub('{format}','json').sub('{' + 'subscription-key' + '}', subscription_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'zuora-version'] = opts[:'zuora_version'] if !opts[:'zuora_version'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PUTSubscriptionSuspendResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#p_ut_subscription_suspend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CRUD: Delete Subscription
    # 
    # @param id Object id
    # @param [Hash] opts the optional parameters
    # @return [ProxyDeleteResponse]
    def proxy_delete_subscription(id, opts = {})
      data, _status_code, _headers = proxy_delete_subscription_with_http_info(id, opts)
      return data
    end

    # CRUD: Delete Subscription
    # 
    # @param id Object id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProxyDeleteResponse, Fixnum, Hash)>] ProxyDeleteResponse data, response status code and response headers
    def proxy_delete_subscription_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.proxy_delete_subscription ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.proxy_delete_subscription" if id.nil?
      # resource path
      local_var_path = "/object/subscription/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProxyDeleteResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#proxy_delete_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CRUD: Retrieve Subscription
    # 
    # @param id Object id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Object fields to return
    # @return [ProxyGetSubscription]
    def proxy_get_subscription(id, opts = {})
      data, _status_code, _headers = proxy_get_subscription_with_http_info(id, opts)
      return data
    end

    # CRUD: Retrieve Subscription
    # 
    # @param id Object id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Object fields to return
    # @return [Array<(ProxyGetSubscription, Fixnum, Hash)>] ProxyGetSubscription data, response status code and response headers
    def proxy_get_subscription_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.proxy_get_subscription ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.proxy_get_subscription" if id.nil?
      # resource path
      local_var_path = "/object/subscription/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProxyGetSubscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#proxy_get_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CRUD: Create Subscription
    # 
    # @param create_request 
    # @param [Hash] opts the optional parameters
    # @return [ProxyCreateOrModifyResponse]
    def proxy_post_subscription(create_request, opts = {})
      data, _status_code, _headers = proxy_post_subscription_with_http_info(create_request, opts)
      return data
    end

    # CRUD: Create Subscription
    # 
    # @param create_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProxyCreateOrModifyResponse, Fixnum, Hash)>] ProxyCreateOrModifyResponse data, response status code and response headers
    def proxy_post_subscription_with_http_info(create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.proxy_post_subscription ..."
      end
      # verify the required parameter 'create_request' is set
      fail ArgumentError, "Missing the required parameter 'create_request' when calling SubscriptionsApi.proxy_post_subscription" if create_request.nil?
      # resource path
      local_var_path = "/object/subscription".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProxyCreateOrModifyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#proxy_post_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CRUD: Update Subscription
    # 
    # @param id Object id
    # @param modify_request 
    # @param [Hash] opts the optional parameters
    # @return [ProxyCreateOrModifyResponse]
    def proxy_put_subscription(id, modify_request, opts = {})
      data, _status_code, _headers = proxy_put_subscription_with_http_info(id, modify_request, opts)
      return data
    end

    # CRUD: Update Subscription
    # 
    # @param id Object id
    # @param modify_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProxyCreateOrModifyResponse, Fixnum, Hash)>] ProxyCreateOrModifyResponse data, response status code and response headers
    def proxy_put_subscription_with_http_info(id, modify_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionsApi.proxy_put_subscription ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.proxy_put_subscription" if id.nil?
      # verify the required parameter 'modify_request' is set
      fail ArgumentError, "Missing the required parameter 'modify_request' when calling SubscriptionsApi.proxy_put_subscription" if modify_request.nil?
      # resource path
      local_var_path = "/object/subscription/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(modify_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProxyCreateOrModifyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#proxy_put_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
