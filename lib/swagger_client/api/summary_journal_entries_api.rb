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
  class SummaryJournalEntriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete summary journal entry
    # This reference describes how to delete a summary journal entry using the REST API.  You must have the \"Delete Cancelled Journal Entry\" [Z-Finance user permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles) enabled to delete summary journal entries.  A summary journal entry must be canceled before it can be deleted. 
    # @param je_number Journal entry number in the format JE-00000001.
    # @param [Hash] opts the optional parameters
    # @return [CommonResponseType]
    def d_elete_summary_journal_entry(je_number, opts = {})
      data, _status_code, _headers = d_elete_summary_journal_entry_with_http_info(je_number, opts)
      return data
    end

    # Delete summary journal entry
    # This reference describes how to delete a summary journal entry using the REST API.  You must have the \&quot;Delete Cancelled Journal Entry\&quot; [Z-Finance user permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles) enabled to delete summary journal entries.  A summary journal entry must be canceled before it can be deleted. 
    # @param je_number Journal entry number in the format JE-00000001.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommonResponseType, Fixnum, Hash)>] CommonResponseType data, response status code and response headers
    def d_elete_summary_journal_entry_with_http_info(je_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SummaryJournalEntriesApi.d_elete_summary_journal_entry ..."
      end
      # verify the required parameter 'je_number' is set
      fail ArgumentError, "Missing the required parameter 'je_number' when calling SummaryJournalEntriesApi.d_elete_summary_journal_entry" if je_number.nil?
      # resource path
      local_var_path = "/journal-entries/{je-number}".sub('{format}','json').sub('{' + 'je-number' + '}', je_number.to_s)

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
        @api_client.config.logger.debug "API called: SummaryJournalEntriesApi#d_elete_summary_journal_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all summary journal entries in a journal run
    #  This REST API reference describes how to retrieve information about all summary journal entries in a journal run. 
    # @param jr_number Journal run number.
    # @param [Hash] opts the optional parameters
    # @return [GETJournalEntriesInJournalRunType]
    def g_et_journal_entries_in_journal_run(jr_number, opts = {})
      data, _status_code, _headers = g_et_journal_entries_in_journal_run_with_http_info(jr_number, opts)
      return data
    end

    # Get all summary journal entries in a journal run
    #  This REST API reference describes how to retrieve information about all summary journal entries in a journal run. 
    # @param jr_number Journal run number.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GETJournalEntriesInJournalRunType, Fixnum, Hash)>] GETJournalEntriesInJournalRunType data, response status code and response headers
    def g_et_journal_entries_in_journal_run_with_http_info(jr_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SummaryJournalEntriesApi.g_et_journal_entries_in_journal_run ..."
      end
      # verify the required parameter 'jr_number' is set
      fail ArgumentError, "Missing the required parameter 'jr_number' when calling SummaryJournalEntriesApi.g_et_journal_entries_in_journal_run" if jr_number.nil?
      # resource path
      local_var_path = "/journal-entries/journal-runs/{jr-number}".sub('{format}','json').sub('{' + 'jr-number' + '}', jr_number.to_s)

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
        :return_type => 'GETJournalEntriesInJournalRunType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SummaryJournalEntriesApi#g_et_journal_entries_in_journal_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get summary journal entry
    # This REST API reference describes how to get information about a summary journal entry by its journal entry number. 
    # @param je_number 
    # @param [Hash] opts the optional parameters
    # @return [GETJournalEntryDetailType]
    def g_et_journal_entry_detail(je_number, opts = {})
      data, _status_code, _headers = g_et_journal_entry_detail_with_http_info(je_number, opts)
      return data
    end

    # Get summary journal entry
    # This REST API reference describes how to get information about a summary journal entry by its journal entry number. 
    # @param je_number 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GETJournalEntryDetailType, Fixnum, Hash)>] GETJournalEntryDetailType data, response status code and response headers
    def g_et_journal_entry_detail_with_http_info(je_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SummaryJournalEntriesApi.g_et_journal_entry_detail ..."
      end
      # verify the required parameter 'je_number' is set
      fail ArgumentError, "Missing the required parameter 'je_number' when calling SummaryJournalEntriesApi.g_et_journal_entry_detail" if je_number.nil?
      # resource path
      local_var_path = "/journal-entries/{je-number}".sub('{format}','json').sub('{' + 'je-number' + '}', je_number.to_s)

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
        :return_type => 'GETJournalEntryDetailType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SummaryJournalEntriesApi#g_et_journal_entry_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create summary journal entry
    # This REST API reference describes how to manually create a summary journal entry. Request and response field descriptions and sample code are provided. ## Requirements 1.The sum of debits must equal the sum of credits in the summary journal entry.  2.The following applies only if you use foreign currency conversion:   * If you have configured [Aggregate transactions with different currencies during a Journal Run](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/E_Accounting_Periods/C_Configure_accounting_rules#Aggregate_transactions_with_different_currencies_during_a_Journal_Run) to \"Yes\", the value of the **currency** field must be the same as your tenant's home currency. That is, you must create journal entries using your home currency.   * All journal entries in an accounting period must either all be aggregated or all be unaggregated. You cannot have a mix of aggregated and unaggregated journal entries in the same accounting period.  See [Foreign Currency Conversion for Summary Journal Entries](https://knowledgecenter.zuora.com/CC_Finance/Foreign_Currency_Conversion/Foreign_Currency_Conversion_for_Summary_Journal_Entries) for more information about currency aggregation. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [POSTJournalEntryResponseType]
    def p_ost_journal_entry(request, opts = {})
      data, _status_code, _headers = p_ost_journal_entry_with_http_info(request, opts)
      return data
    end

    # Create summary journal entry
    # This REST API reference describes how to manually create a summary journal entry. Request and response field descriptions and sample code are provided. ## Requirements 1.The sum of debits must equal the sum of credits in the summary journal entry.  2.The following applies only if you use foreign currency conversion:   * If you have configured [Aggregate transactions with different currencies during a Journal Run](https://knowledgecenter.zuora.com/CC_Finance/A_Z-Finance/E_Accounting_Periods/C_Configure_accounting_rules#Aggregate_transactions_with_different_currencies_during_a_Journal_Run) to \&quot;Yes\&quot;, the value of the **currency** field must be the same as your tenant&#39;s home currency. That is, you must create journal entries using your home currency.   * All journal entries in an accounting period must either all be aggregated or all be unaggregated. You cannot have a mix of aggregated and unaggregated journal entries in the same accounting period.  See [Foreign Currency Conversion for Summary Journal Entries](https://knowledgecenter.zuora.com/CC_Finance/Foreign_Currency_Conversion/Foreign_Currency_Conversion_for_Summary_Journal_Entries) for more information about currency aggregation. 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(POSTJournalEntryResponseType, Fixnum, Hash)>] POSTJournalEntryResponseType data, response status code and response headers
    def p_ost_journal_entry_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SummaryJournalEntriesApi.p_ost_journal_entry ..."
      end
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SummaryJournalEntriesApi.p_ost_journal_entry" if request.nil?
      # resource path
      local_var_path = "/journal-entries".sub('{format}','json')

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
        :return_type => 'POSTJournalEntryResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SummaryJournalEntriesApi#p_ost_journal_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update basic information of a summary journal entry
    #  This REST API reference describes how to update the basic information of a summary journal entry. Request and response field descriptions and sample code are provided. 
    # @param je_number Journal entry number in the format JE-00000001.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [CommonResponseType]
    def p_ut_basic_summary_journal_entry(je_number, request, opts = {})
      data, _status_code, _headers = p_ut_basic_summary_journal_entry_with_http_info(je_number, request, opts)
      return data
    end

    # Update basic information of a summary journal entry
    #  This REST API reference describes how to update the basic information of a summary journal entry. Request and response field descriptions and sample code are provided. 
    # @param je_number Journal entry number in the format JE-00000001.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommonResponseType, Fixnum, Hash)>] CommonResponseType data, response status code and response headers
    def p_ut_basic_summary_journal_entry_with_http_info(je_number, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SummaryJournalEntriesApi.p_ut_basic_summary_journal_entry ..."
      end
      # verify the required parameter 'je_number' is set
      fail ArgumentError, "Missing the required parameter 'je_number' when calling SummaryJournalEntriesApi.p_ut_basic_summary_journal_entry" if je_number.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SummaryJournalEntriesApi.p_ut_basic_summary_journal_entry" if request.nil?
      # resource path
      local_var_path = "/journal-entries/{je-number}/basic-information".sub('{format}','json').sub('{' + 'je-number' + '}', je_number.to_s)

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
        @api_client.config.logger.debug "API called: SummaryJournalEntriesApi#p_ut_basic_summary_journal_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel summary journal entry
    #  This reference describes how to cancel a summary journal entry using the REST API.  You must have the \"Cancel Journal Entry\" [Z-Finance user permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles) enabled to cancel summary journal entries.  A summary journal entry cannot be canceled if its Transferred to Accounting status is \"Yes\" or \"Processing\". 
    # @param je_number Journal entry number in the format JE-00000001.
    # @param [Hash] opts the optional parameters
    # @return [CommonResponseType]
    def p_ut_summary_journal_entry(je_number, opts = {})
      data, _status_code, _headers = p_ut_summary_journal_entry_with_http_info(je_number, opts)
      return data
    end

    # Cancel summary journal entry
    #  This reference describes how to cancel a summary journal entry using the REST API.  You must have the \&quot;Cancel Journal Entry\&quot; [Z-Finance user permission](https://knowledgecenter.zuora.com/CF_Users_and_Administrators/Administrator_Settings/User_Roles/Z-Finance_Roles) enabled to cancel summary journal entries.  A summary journal entry cannot be canceled if its Transferred to Accounting status is \&quot;Yes\&quot; or \&quot;Processing\&quot;. 
    # @param je_number Journal entry number in the format JE-00000001.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommonResponseType, Fixnum, Hash)>] CommonResponseType data, response status code and response headers
    def p_ut_summary_journal_entry_with_http_info(je_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SummaryJournalEntriesApi.p_ut_summary_journal_entry ..."
      end
      # verify the required parameter 'je_number' is set
      fail ArgumentError, "Missing the required parameter 'je_number' when calling SummaryJournalEntriesApi.p_ut_summary_journal_entry" if je_number.nil?
      # resource path
      local_var_path = "/journal-entries/{je-number}/cancel".sub('{format}','json').sub('{' + 'je-number' + '}', je_number.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommonResponseType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SummaryJournalEntriesApi#p_ut_summary_journal_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
