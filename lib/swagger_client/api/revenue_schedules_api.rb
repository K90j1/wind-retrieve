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
  class RevenueSchedulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete revenue schedule
    # This REST API reference describes how to delete a revenue schedule by specifying its revenue schedule number ## Prerequisites You must have the Delete Custom Revenue Schedule [Z-Finance permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles#Z-Finance_Permissions). 
    # @param rs_number  Revenue schedule number of the revenue schedule you want to delete, for example, RS-00000256. To be deleted, the revenue schedule: * Must be using a custom unlimited recognition rule. * Cannot have any revenue in a closed accounting period. * Cannot be included in a summary journal entry. * Cannot have a revenue schedule date in a closed accounting period. 
    # @param [Hash] opts the optional parameters
    # @return [CommonResponseType]
    def d_eleters(rs_number, opts = {})
      data, _status_code, _headers = d_eleters_with_http_info(rs_number, opts)
      return data
    end

    # Delete revenue schedule
    # This REST API reference describes how to delete a revenue schedule by specifying its revenue schedule number ## Prerequisites You must have the Delete Custom Revenue Schedule [Z-Finance permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles#Z-Finance_Permissions). 
    # @param rs_number  Revenue schedule number of the revenue schedule you want to delete, for example, RS-00000256. To be deleted, the revenue schedule: * Must be using a custom unlimited recognition rule. * Cannot have any revenue in a closed accounting period. * Cannot be included in a summary journal entry. * Cannot have a revenue schedule date in a closed accounting period. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommonResponseType, Fixnum, Hash)>] CommonResponseType data, response status code and response headers
    def d_eleters_with_http_info(rs_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.d_eleters ..."
      end
      # verify the required parameter 'rs_number' is set
      fail ArgumentError, "Missing the required parameter 'rs_number' when calling RevenueSchedulesApi.d_eleters" if rs_number.nil?
      # resource path
      local_var_path = "/revenue-schedules/{rs-number}".sub('{format}','json').sub('{' + 'rs-number' + '}', rs_number.to_s)

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
        :return_type => 'CommonResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#d_eleters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a revenue schedule by invoice item ID
    # This REST API reference describes how to get the details of a revenue schedule by specifying the invoice item ID.
    # @param invoice_item_id A valid Invoice Item ID.
    # @param [Hash] opts the optional parameters
    # @return [GETRSDetailType]
    def g_etr_sby_invoice_item(invoice_item_id, opts = {})
      data, _status_code, _headers = g_etr_sby_invoice_item_with_http_info(invoice_item_id, opts)
      return data
    end

    # Get a revenue schedule by invoice item ID
    # This REST API reference describes how to get the details of a revenue schedule by specifying the invoice item ID.
    # @param invoice_item_id A valid Invoice Item ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GETRSDetailType, Fixnum, Hash)>] GETRSDetailType data, response status code and response headers
    def g_etr_sby_invoice_item_with_http_info(invoice_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.g_etr_sby_invoice_item ..."
      end
      # verify the required parameter 'invoice_item_id' is set
      fail ArgumentError, "Missing the required parameter 'invoice_item_id' when calling RevenueSchedulesApi.g_etr_sby_invoice_item" if invoice_item_id.nil?
      # resource path
      local_var_path = "/revenue-schedules/invoice-items/{invoice-item-id}".sub('{format}','json').sub('{' + 'invoice-item-id' + '}', invoice_item_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GETRSDetailType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#g_etr_sby_invoice_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a revenue schedule by invoice item adjustment
    # This REST API reference describes how to get the details of a revenue schedule by specifying a valid invoice item adjustment identifier. Request and response field descriptions and sample code are provided. 
    # @param invoice_item_adj_id ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72.
    # @param [Hash] opts the optional parameters
    # @return [GETRSDetailType]
    def g_etr_sby_invoice_item_adjustment(invoice_item_adj_id, opts = {})
      data, _status_code, _headers = g_etr_sby_invoice_item_adjustment_with_http_info(invoice_item_adj_id, opts)
      return data
    end

    # Get a revenue schedule by invoice item adjustment
    # This REST API reference describes how to get the details of a revenue schedule by specifying a valid invoice item adjustment identifier. Request and response field descriptions and sample code are provided. 
    # @param invoice_item_adj_id ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GETRSDetailType, Fixnum, Hash)>] GETRSDetailType data, response status code and response headers
    def g_etr_sby_invoice_item_adjustment_with_http_info(invoice_item_adj_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.g_etr_sby_invoice_item_adjustment ..."
      end
      # verify the required parameter 'invoice_item_adj_id' is set
      fail ArgumentError, "Missing the required parameter 'invoice_item_adj_id' when calling RevenueSchedulesApi.g_etr_sby_invoice_item_adjustment" if invoice_item_adj_id.nil?
      # resource path
      local_var_path = "/revenue-schedules/invoice-item-adjustments/{invoice-item-adj-id}/".sub('{format}','json').sub('{' + 'invoice-item-adj-id' + '}', invoice_item_adj_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GETRSDetailType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#g_etr_sby_invoice_item_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get revenue schedule details
    # This REST API reference describes how to get the details of a revenue schedule by specifying the revenue schedule number. Request and response field descriptions and sample code are provided.
    # @param rs_number Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param [Hash] opts the optional parameters
    # @return [GETRSDetailType]
    def g_etrs_detail(rs_number, opts = {})
      data, _status_code, _headers = g_etrs_detail_with_http_info(rs_number, opts)
      return data
    end

    # Get revenue schedule details
    # This REST API reference describes how to get the details of a revenue schedule by specifying the revenue schedule number. Request and response field descriptions and sample code are provided.
    # @param rs_number Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GETRSDetailType, Fixnum, Hash)>] GETRSDetailType data, response status code and response headers
    def g_etrs_detail_with_http_info(rs_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.g_etrs_detail ..."
      end
      # verify the required parameter 'rs_number' is set
      fail ArgumentError, "Missing the required parameter 'rs_number' when calling RevenueSchedulesApi.g_etrs_detail" if rs_number.nil?
      # resource path
      local_var_path = "/revenue-schedules/{rs-number}".sub('{format}','json').sub('{' + 'rs-number' + '}', rs_number.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GETRSDetailType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#g_etrs_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get revenue schedule by subscription charge
    # This REST API reference describes how to get the revenue schedule details by specifying subscription charge ID. Request and response field descriptions and sample code are provided
    # @param charge_key ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012.
    # @param [Hash] opts the optional parameters
    # @return [GETRSDetailsByChargeType]
    def g_etrs_details_by_charge(charge_key, opts = {})
      data, _status_code, _headers = g_etrs_details_by_charge_with_http_info(charge_key, opts)
      return data
    end

    # Get revenue schedule by subscription charge
    # This REST API reference describes how to get the revenue schedule details by specifying subscription charge ID. Request and response field descriptions and sample code are provided
    # @param charge_key ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GETRSDetailsByChargeType, Fixnum, Hash)>] GETRSDetailsByChargeType data, response status code and response headers
    def g_etrs_details_by_charge_with_http_info(charge_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.g_etrs_details_by_charge ..."
      end
      # verify the required parameter 'charge_key' is set
      fail ArgumentError, "Missing the required parameter 'charge_key' when calling RevenueSchedulesApi.g_etrs_details_by_charge" if charge_key.nil?
      # resource path
      local_var_path = "/revenue-schedules/subscription-charges/{charge-key}".sub('{format}','json').sub('{' + 'charge-key' + '}', charge_key.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GETRSDetailsByChargeType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#g_etrs_details_by_charge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a revenue schedule on a subscription charge
    # This REST API reference describes how to create a revenue schedule by specifying the subscription charge. This method is for custom unlimited revenue recognition only.
    # @param charge_key ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [POSTRevenueScheduleByChargeResponseType]
    def p_ost_revenue_schedule_by_charge_response(charge_key, request, opts = {})
      data, _status_code, _headers = p_ost_revenue_schedule_by_charge_response_with_http_info(charge_key, request, opts)
      return data
    end

    # Create a revenue schedule on a subscription charge
    # This REST API reference describes how to create a revenue schedule by specifying the subscription charge. This method is for custom unlimited revenue recognition only.
    # @param charge_key ID of the subscription rate plan charge; for example, 402892793e173340013e173b81000012.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(POSTRevenueScheduleByChargeResponseType, Fixnum, Hash)>] POSTRevenueScheduleByChargeResponseType data, response status code and response headers
    def p_ost_revenue_schedule_by_charge_response_with_http_info(charge_key, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.p_ost_revenue_schedule_by_charge_response ..."
      end
      # verify the required parameter 'charge_key' is set
      fail ArgumentError, "Missing the required parameter 'charge_key' when calling RevenueSchedulesApi.p_ost_revenue_schedule_by_charge_response" if charge_key.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling RevenueSchedulesApi.p_ost_revenue_schedule_by_charge_response" if request.nil?
      # resource path
      local_var_path = "/revenue-schedules/subscription-charges/{charge-key}".sub('{format}','json').sub('{' + 'charge-key' + '}', charge_key.to_s)

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
        :return_type => 'POSTRevenueScheduleByChargeResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#p_ost_revenue_schedule_by_charge_response\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a revenue schedule for an Invoice Item Adjustment (distribute by date range)
    # This REST API reference describes how to create a revenue schedule for an Invoice Item Adjustment and distribute the revenue by specifying the recognition start and end dates.
    # @param invoice_item_adj_key ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72. If the specified Invoice Item Adjustment is already associated with a revenue schedule, the call will fail. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [POSTRevenueScheduleByTransactionResponseType]
    def p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range(invoice_item_adj_key, request, opts = {})
      data, _status_code, _headers = p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range_with_http_info(invoice_item_adj_key, request, opts)
      return data
    end

    # Create a revenue schedule for an Invoice Item Adjustment (distribute by date range)
    # This REST API reference describes how to create a revenue schedule for an Invoice Item Adjustment and distribute the revenue by specifying the recognition start and end dates.
    # @param invoice_item_adj_key ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72. If the specified Invoice Item Adjustment is already associated with a revenue schedule, the call will fail. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(POSTRevenueScheduleByTransactionResponseType, Fixnum, Hash)>] POSTRevenueScheduleByTransactionResponseType data, response status code and response headers
    def p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range_with_http_info(invoice_item_adj_key, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range ..."
      end
      # verify the required parameter 'invoice_item_adj_key' is set
      fail ArgumentError, "Missing the required parameter 'invoice_item_adj_key' when calling RevenueSchedulesApi.p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range" if invoice_item_adj_key.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling RevenueSchedulesApi.p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range" if request.nil?
      # resource path
      local_var_path = "/revenue-schedules/invoice-item-adjustments/{invoice-item-adj-key}/distribute-revenue-with-date-range".sub('{format}','json').sub('{' + 'invoice-item-adj-key' + '}', invoice_item_adj_key.to_s)

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
        :return_type => 'POSTRevenueScheduleByTransactionResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a revenue schedule for an Invoice Item Adjustment (manual distribution)
    # This REST API reference describes how to create a revenue schedule for an Invoice Item Adjustment and manually distribute the revenue.
    # @param invoice_item_adj_key ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72. If the specified Invoice Item Adjustment is already associated with a revenue schedule, the call will fail. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [POSTRevenueScheduleByTransactionResponseType]
    def p_ostr_sfor_invoice_item_adjustment_manual_distribution(invoice_item_adj_key, request, opts = {})
      data, _status_code, _headers = p_ostr_sfor_invoice_item_adjustment_manual_distribution_with_http_info(invoice_item_adj_key, request, opts)
      return data
    end

    # Create a revenue schedule for an Invoice Item Adjustment (manual distribution)
    # This REST API reference describes how to create a revenue schedule for an Invoice Item Adjustment and manually distribute the revenue.
    # @param invoice_item_adj_key ID or number of the Invoice Item Adjustment, for example, e20b07fd416dcfcf0141c81164fd0a72. If the specified Invoice Item Adjustment is already associated with a revenue schedule, the call will fail. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(POSTRevenueScheduleByTransactionResponseType, Fixnum, Hash)>] POSTRevenueScheduleByTransactionResponseType data, response status code and response headers
    def p_ostr_sfor_invoice_item_adjustment_manual_distribution_with_http_info(invoice_item_adj_key, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.p_ostr_sfor_invoice_item_adjustment_manual_distribution ..."
      end
      # verify the required parameter 'invoice_item_adj_key' is set
      fail ArgumentError, "Missing the required parameter 'invoice_item_adj_key' when calling RevenueSchedulesApi.p_ostr_sfor_invoice_item_adjustment_manual_distribution" if invoice_item_adj_key.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling RevenueSchedulesApi.p_ostr_sfor_invoice_item_adjustment_manual_distribution" if request.nil?
      # resource path
      local_var_path = "/revenue-schedules/invoice-item-adjustments/{invoice-item-adj-key}".sub('{format}','json').sub('{' + 'invoice-item-adj-key' + '}', invoice_item_adj_key.to_s)

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
        :return_type => 'POSTRevenueScheduleByTransactionResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#p_ostr_sfor_invoice_item_adjustment_manual_distribution\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a revenue schedule for an Invoice Item (distribute by date range)
    # This REST API reference describes how to create a revenue schedule for an Invoice Item and distribute the revenue by specifying the recognition start and end dates.
    # @param invoice_item_id ID of the Invoice Item, for example, e20b07fd416dcfcf0141c81164fd0a75. If the specified Invoice Item is already associated with a revenue schedule, the call will fail. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [POSTRevenueScheduleByTransactionResponseType]
    def p_ostr_sfor_invoice_item_distribute_by_date_range(invoice_item_id, request, opts = {})
      data, _status_code, _headers = p_ostr_sfor_invoice_item_distribute_by_date_range_with_http_info(invoice_item_id, request, opts)
      return data
    end

    # Create a revenue schedule for an Invoice Item (distribute by date range)
    # This REST API reference describes how to create a revenue schedule for an Invoice Item and distribute the revenue by specifying the recognition start and end dates.
    # @param invoice_item_id ID of the Invoice Item, for example, e20b07fd416dcfcf0141c81164fd0a75. If the specified Invoice Item is already associated with a revenue schedule, the call will fail. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(POSTRevenueScheduleByTransactionResponseType, Fixnum, Hash)>] POSTRevenueScheduleByTransactionResponseType data, response status code and response headers
    def p_ostr_sfor_invoice_item_distribute_by_date_range_with_http_info(invoice_item_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.p_ostr_sfor_invoice_item_distribute_by_date_range ..."
      end
      # verify the required parameter 'invoice_item_id' is set
      fail ArgumentError, "Missing the required parameter 'invoice_item_id' when calling RevenueSchedulesApi.p_ostr_sfor_invoice_item_distribute_by_date_range" if invoice_item_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling RevenueSchedulesApi.p_ostr_sfor_invoice_item_distribute_by_date_range" if request.nil?
      # resource path
      local_var_path = "/revenue-schedules/invoice-items/{invoice-item-id}/distribute-revenue-with-date-range".sub('{format}','json').sub('{' + 'invoice-item-id' + '}', invoice_item_id.to_s)

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
        :return_type => 'POSTRevenueScheduleByTransactionResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#p_ostr_sfor_invoice_item_distribute_by_date_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a revenue schedule for an Invoice Item (manual distribution)
    # This REST API reference describes how to create a revenue schedule for an Invoice Item and manually distribute the revenue.
    # @param invoice_item_id ID of the Invoice Item, for example, e20b07fd416dcfcf0141c81164fd0a75. If the specified Invoice Item is already associated with a revenue schedule, the call will fail. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [POSTRevenueScheduleByTransactionResponseType]
    def p_ostr_sfor_invoice_item_manual_distribution(invoice_item_id, request, opts = {})
      data, _status_code, _headers = p_ostr_sfor_invoice_item_manual_distribution_with_http_info(invoice_item_id, request, opts)
      return data
    end

    # Create a revenue schedule for an Invoice Item (manual distribution)
    # This REST API reference describes how to create a revenue schedule for an Invoice Item and manually distribute the revenue.
    # @param invoice_item_id ID of the Invoice Item, for example, e20b07fd416dcfcf0141c81164fd0a75. If the specified Invoice Item is already associated with a revenue schedule, the call will fail. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(POSTRevenueScheduleByTransactionResponseType, Fixnum, Hash)>] POSTRevenueScheduleByTransactionResponseType data, response status code and response headers
    def p_ostr_sfor_invoice_item_manual_distribution_with_http_info(invoice_item_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.p_ostr_sfor_invoice_item_manual_distribution ..."
      end
      # verify the required parameter 'invoice_item_id' is set
      fail ArgumentError, "Missing the required parameter 'invoice_item_id' when calling RevenueSchedulesApi.p_ostr_sfor_invoice_item_manual_distribution" if invoice_item_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling RevenueSchedulesApi.p_ostr_sfor_invoice_item_manual_distribution" if request.nil?
      # resource path
      local_var_path = "/revenue-schedules/invoice-items/{invoice-item-id}".sub('{format}','json').sub('{' + 'invoice-item-id' + '}', invoice_item_id.to_s)

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
        :return_type => 'POSTRevenueScheduleByTransactionResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#p_ostr_sfor_invoice_item_manual_distribution\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Distribute revenue across accounting periods
    # This REST API reference describes how to distribute revenue by specifying the revenue schedule number. Request and response field descriptions and sample code are provided.
    # @param rs_number Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [PUTRevenueScheduleResponseType]
    def p_ut_revenue_across_ap(rs_number, request, opts = {})
      data, _status_code, _headers = p_ut_revenue_across_ap_with_http_info(rs_number, request, opts)
      return data
    end

    # Distribute revenue across accounting periods
    # This REST API reference describes how to distribute revenue by specifying the revenue schedule number. Request and response field descriptions and sample code are provided.
    # @param rs_number Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PUTRevenueScheduleResponseType, Fixnum, Hash)>] PUTRevenueScheduleResponseType data, response status code and response headers
    def p_ut_revenue_across_ap_with_http_info(rs_number, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.p_ut_revenue_across_ap ..."
      end
      # verify the required parameter 'rs_number' is set
      fail ArgumentError, "Missing the required parameter 'rs_number' when calling RevenueSchedulesApi.p_ut_revenue_across_ap" if rs_number.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling RevenueSchedulesApi.p_ut_revenue_across_ap" if request.nil?
      # resource path
      local_var_path = "/revenue-schedules/{rs-number}/distribute-revenue-across-accounting-periods".sub('{format}','json').sub('{' + 'rs-number' + '}', rs_number.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PUTRevenueScheduleResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#p_ut_revenue_across_ap\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Distribute revenue by recognition start and end dates
    # This REST API reference describes how to distribute revenue by specifying the recognition start and end dates. Request and response field descriptions and sample code are provided.
    # @param rs_number Revenue schedule number. Specify the revenue schedule whose revenue you want to distribute.    The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [PUTRevenueScheduleResponseType]
    def p_ut_revenue_by_recognition_startand_end_dates(rs_number, request, opts = {})
      data, _status_code, _headers = p_ut_revenue_by_recognition_startand_end_dates_with_http_info(rs_number, request, opts)
      return data
    end

    # Distribute revenue by recognition start and end dates
    # This REST API reference describes how to distribute revenue by specifying the recognition start and end dates. Request and response field descriptions and sample code are provided.
    # @param rs_number Revenue schedule number. Specify the revenue schedule whose revenue you want to distribute.    The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PUTRevenueScheduleResponseType, Fixnum, Hash)>] PUTRevenueScheduleResponseType data, response status code and response headers
    def p_ut_revenue_by_recognition_startand_end_dates_with_http_info(rs_number, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.p_ut_revenue_by_recognition_startand_end_dates ..."
      end
      # verify the required parameter 'rs_number' is set
      fail ArgumentError, "Missing the required parameter 'rs_number' when calling RevenueSchedulesApi.p_ut_revenue_by_recognition_startand_end_dates" if rs_number.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling RevenueSchedulesApi.p_ut_revenue_by_recognition_startand_end_dates" if request.nil?
      # resource path
      local_var_path = "/revenue-schedules/{rs-number}/distribute-revenue-with-date-range".sub('{format}','json').sub('{' + 'rs-number' + '}', rs_number.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PUTRevenueScheduleResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#p_ut_revenue_by_recognition_startand_end_dates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Distribute revenue on a specific date
    # This REST API reference describes how to distribute revenue on a specific recognition date. Request and response field descriptions and sample code are provided.
    # @param rs_number Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [PUTRevenueScheduleResponseType]
    def p_ut_revenue_specific_date(rs_number, request, opts = {})
      data, _status_code, _headers = p_ut_revenue_specific_date_with_http_info(rs_number, request, opts)
      return data
    end

    # Distribute revenue on a specific date
    # This REST API reference describes how to distribute revenue on a specific recognition date. Request and response field descriptions and sample code are provided.
    # @param rs_number Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PUTRevenueScheduleResponseType, Fixnum, Hash)>] PUTRevenueScheduleResponseType data, response status code and response headers
    def p_ut_revenue_specific_date_with_http_info(rs_number, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.p_ut_revenue_specific_date ..."
      end
      # verify the required parameter 'rs_number' is set
      fail ArgumentError, "Missing the required parameter 'rs_number' when calling RevenueSchedulesApi.p_ut_revenue_specific_date" if rs_number.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling RevenueSchedulesApi.p_ut_revenue_specific_date" if request.nil?
      # resource path
      local_var_path = "/revenue-schedules/{rs-number}/distribute-revenue-on-specific-date".sub('{format}','json').sub('{' + 'rs-number' + '}', rs_number.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PUTRevenueScheduleResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#p_ut_revenue_specific_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update revenue schedule basic information
    # This REST API reference describes how to get basic information of a revenue schedule by specifying the revenue schedule number. Request and response field descriptions and sample code are provided. 
    # @param rs_number Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [CommonResponseType]
    def p_utrs_basic_info(rs_number, request, opts = {})
      data, _status_code, _headers = p_utrs_basic_info_with_http_info(rs_number, request, opts)
      return data
    end

    # Update revenue schedule basic information
    # This REST API reference describes how to get basic information of a revenue schedule by specifying the revenue schedule number. Request and response field descriptions and sample code are provided. 
    # @param rs_number Revenue schedule number. The revenue schedule number is always prefixed with \&quot;RS\&quot;, for example, \&quot;RS-00000001\&quot;. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommonResponseType, Fixnum, Hash)>] CommonResponseType data, response status code and response headers
    def p_utrs_basic_info_with_http_info(rs_number, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RevenueSchedulesApi.p_utrs_basic_info ..."
      end
      # verify the required parameter 'rs_number' is set
      fail ArgumentError, "Missing the required parameter 'rs_number' when calling RevenueSchedulesApi.p_utrs_basic_info" if rs_number.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling RevenueSchedulesApi.p_utrs_basic_info" if request.nil?
      # resource path
      local_var_path = "/revenue-schedules/{rs-number}/basic-information".sub('{format}','json').sub('{' + 'rs-number' + '}', rs_number.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommonResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RevenueSchedulesApi#p_utrs_basic_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
