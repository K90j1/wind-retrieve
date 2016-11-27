# swagger_client

SwaggerClient - the Ruby gem for the Zuora API Reference

 # Introduction  Welcome to the reference for the Zuora REST API!  <a href=\"http://en.wikipedia.org/wiki/REST_API\" target=\"_blank\">REST</a> is a web-service protocol that lends itself to rapid development by using everyday HTTP and JSON technology.  The Zuora REST API provides a broad set of operations and resources that:  * Enable Web Storefront integration from your website. * Support self-service subscriber sign-ups and account management. * Process revenue schedules through custom revenue rule models. * Enable manipulation of most objects in the Zuora Object Model.  ## Endpoints  The Zuora REST API is provided via the following endpoints.  | Tenant                 | Base URL for REST Endpoints                                                                                                                                         | |-------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------| | Production | https://rest.zuora.com/v1                                                                                                                                           | | API Sandbox    | https://rest.apisandbox.zuora.com/v1                                                                                                                                |  The production endpoint provides access to your live user data. The API Sandbox tenant is a good place to test your code without affecting real-world data. To use it, you must be provisioned with an API Sandbox tenant - your Zuora representative can help you if needed.  ## Access to the API  If you have a Zuora tenant, you already have access to the API.  If you don't have a Zuora tenant, go to <a href=\"https://www.zuora.com/resource/zuora-test-drive\" target=\"_blank\">https://www.zuora.com/resource/zuora-test-drive</a> and sign up for a Production Test Drive tenant. The tenant comes with seed data, such as a sample product catalog.   We recommend that you <a href=\"https://knowledgecenter.zuora.com/CF_Users_and_Administrators/A_Administrator_Settings/Manage_Users/Create_an_API_User\" target=\"_blank\">create an API user</a> specifically for making API calls. Don't log in to the Zuora UI with this account. Logging in to the UI enables a security feature that periodically expires the account's password, which may eventually cause authentication failures with the API. Note that a user role does not have write access to Zuora REST services unless it has the API Write Access permission as described in those instructions.   # Authentication  There are three ways to authenticate:   *   Use username and password. Include authentication with each request in the header:      *   `apiAccessKeyId`      *   `apiSecretAccessKey`      *   `entityId` or `entityName` (Only for [Zuora Multi-entity](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity \"Multi-entity\"). See \"Entity Id and Entity Name\" below for more information.)    * Use an authorization cookie. The  cookie authorizes the user to make calls to the REST API for the duration specified in  **Administration > Security Policies > Session timeout**. The cookie expiration time is reset with this duration after every call to the REST API. To obtain a cookie, call the REST  `connections` resource with the following API user information:     *   ID     *   password     *   entity Id or entity name (Only for [Zuora Multi-entity](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity \"Multi-entity\"). See \"Entity Id and Entity Name\" below for more information.)    *   For CORS-enabled APIs only: Include a 'single-use' token in the request header, which re-authenticates the user with each request. See below for more details.   ## Entity Id and Entity Name  The `entityId` and `entityName`  parameters are only used for  [Zuora Multi-entity](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity).  The  `entityId` and `entityName` parameters specify the Id and the  [name of the entity](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity/B_Introduction_to_Entity_and_Entity_Hierarchy#Name_and_Display_Name \"Introduction to Entity and Entity Hierarchy\") that you want to access, respectively. Note that you must have permission to access the entity. You can get the entity Id and entity name through the REST GET Entities call.  You can specify either the  `entityId` or `entityName` parameter in the authentication to access and view an entity.  *   If both `entityId` and `entityName` are specified in the authentication, an error occurs.  *   If neither  `entityId` nor  `entityName` is specified in the authentication, you will log in to the entity in which your user account is created.   See [API User Authentication](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/Multi-entity/A_Overview_of_Multi-entity#API_User_Authentication \"Zuora Multi-entity\") for more information.  ## Token Authentication for CORS-Enabled APIs  The CORS mechanism enables REST API calls to Zuora to be made directly from your customer's browser, with all credit card and security information transmitted directly to Zuora. This minimizes your PCI compliance burden, allows you to implement advanced validation on your payment forms, and makes your payment forms look just like any other part of your website.  For security reasons, instead of using cookies, an API request via CORS uses **tokens** for authentication.  The token method of authentication is only designed for use with requests that must originate from your customer's browser; **it should not be considered a replacement to the existing cookie authentication** mechanism.  See [Zuora CORS REST ](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics/G_CORS_REST \"Zuora CORS REST\")for details on how CORS works and how you can begin to implement customer calls to the Zuora REST APIs. See  [HMAC Signatures](/BC_Developers/REST_API/B_REST_API_reference/HMAC_Signatures \"HMAC Signatures\") for details on the HMAC method that returns the authentication token.    # Requests and Responses   ## Request IDs  As a general rule, when asked to supply a \"key\" for an account or subscription (accountKey, account-key, subscriptionKey, subscription-key), you can provide either the actual ID or the number of the entity.  ## HTTP Request Body  Most of the parameters and data accompanying your requests will be contained in the body of the HTTP request.  The Zuora REST API accepts JSON in the HTTP request body.  No other data format (e.g., XML) is supported.   ## Testing a Request  Use a third party client, such as [curl](https://curl.haxx.se/ \"curl\"), [Postman](https://www.getpostman.com/ \"Postman\"),  or [Advanced REST Client](https://advancedrestclient.com/ \"Advanced REST Client\"), to test the Zuora REST API.  You can test the Zuora REST API from the Zuora API Sandbox or Production tenants. If connecting to Production, bear in mind that you are working with your live production data, not sample data or test data.  ## Testing with Credit Cards  Sooner or later it will probably be necessary to test some transactions that involve credit cards. For suggestions on how to handle this, see [Going Live With Your Payment Gateway](https://knowledgecenter.zuora.com/CB_Billing/M_Payment_Gateways/C_Managing_Payment_Gateways/B_Going_Live_Payment_Gateways#Testing_with_Credit_Cards \"C_Zuora_User_Guides/A_Billing_and_Payments/M_Payment_Gateways/C_Managing_Payment_Gateways/B_Going_Live_Payment_Gateways#Testing_with_Credit_Cards\").       ## Error Handling  Responses and error codes are detailed in [Responses and errors](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics/3_Responses_and_errors \"Responses and errors\").    # Pagination  When retrieving information (using GET methods), the optional `pageSize` query parameter sets the maximum number of rows to return in a response. The maximum is `40`; larger values are treated as `40`. If this value is empty or invalid, `pageSize` typically defaults to `10`.  The default value for the maximum number of rows retrieved can be overridden at the method level.  If more rows are available, the response will include a `nextPage` element, which contains a URL for requesting the next page.  If this value is not provided, no more rows are available. No \"previous page\" element is explicitly provided; to support backward paging, use the previous call.  ## Array Size  For data items that are not paginated, the REST API supports arrays of up to 300 rows.  Thus, for instance, repeated pagination can retrieve thousands of customer accounts, but within any account an array of no more than 300 rate plans is returned.   # API Versions  The Zuora REST API are version controlled. Versioning ensures that Zuora REST API changes are backward compatible. Zuora uses a major and minor version nomenclature to manage changes. By specifying a version in a REST request, you can get expected responses regardless of future changes to the API.   ## Major Version  The major version number of the REST API appears in the REST URL. Currently, Zuora only supports the **v1** major version. For example,  `POST https://rest.zuora.com/v1/subscriptions` .   ## Minor Version  Zuora uses minor versions for the REST API to control small changes. For example, a field in a REST method is deprecated and a new field is used to replace it.   Some fields in the REST methods are supported as of minor versions. If a field is not noted with a minor version, this field is available for all minor versions. If a field is noted with a minor version, this field is in version control. You must specify the supported minor version in the request header to process without an error.   If a field is in version control, it is either with a minimum minor version or a maximum minor version, or both of them. You can only use this field with the minor version between the minimum and the maximum minor versions. For example, the  `invoiceCollect` field in the POST Subscription method is in version control and its maximum minor version is 189.0. You can only use this field with the minor version 189.0 or earlier.  The supported minor versions are not serial, see [Zuora REST API Minor Version History](https://knowledgecenter.zuora.com/DC_Developers/REST_API/A_REST_basics/Zuora_REST_API_Minor_Version_History \"Zuora REST API Minor Version History\") for the fields and their supported minor versions. In our REST API documentation, if a field or feature requires a minor version number, we note that in the field description.  You only need to specify the version number when you use the fields require a minor version. To specify the minor version, set the `zuora-version` parameter to the minor version number in the request header for the request call. For example, the `collect` field is in 196.0 minor version. If you want to use this field for the POST Subscription method, set the  `zuora-version` parameter to `196.0` in the request header. The `zuora-version` parameter is case sensitive.   For all the REST API fields, by default, if the minor version is not specified in the request header, Zuora will use the minimum minor version of the REST API to avoid breaking your integration.     # Zuora Object Model The following diagram presents a high-level view of the key Zuora objects. Click the image to open it in a new tab to resize it.  <a href=\"https://www.zuora.com/wp-content/uploads/2016/11/ZuoraERD.jpeg\" target=\"_blank\"><img src=\"https://www.zuora.com/wp-content/uploads/2016/11/ZuoraERD.jpeg\" alt=\"Zuora Object Model Diagram\"></a> 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build date: 2016-11-28T02:13:09.945+09:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingCodesApi.new

ac_id = "ac_id_example" # String | ID of the accounting code you want to delete.


begin
  #Delete accounting code
  result = api_instance.d_elete_accounting_code(ac_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingCodesApi->d_elete_accounting_code: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://rest.zuora.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::AccountingCodesApi* | [**d_elete_accounting_code**](docs/AccountingCodesApi.md#d_elete_accounting_code) | **DELETE** /accounting-codes/{ac-id} | Delete accounting code
*SwaggerClient::AccountingCodesApi* | [**g_et_accounting_code_item**](docs/AccountingCodesApi.md#g_et_accounting_code_item) | **GET** /accounting-codes/{ac-id} | Query an accounting code
*SwaggerClient::AccountingCodesApi* | [**g_et_accounting_codes**](docs/AccountingCodesApi.md#g_et_accounting_codes) | **GET** /accounting-codes | Get all accounting codes
*SwaggerClient::AccountingCodesApi* | [**p_ost_accounting_code**](docs/AccountingCodesApi.md#p_ost_accounting_code) | **POST** /accounting-codes | Create accounting code
*SwaggerClient::AccountingCodesApi* | [**p_ut_accounting_code**](docs/AccountingCodesApi.md#p_ut_accounting_code) | **PUT** /accounting-codes/{ac-id} | Update an accounting code
*SwaggerClient::AccountingCodesApi* | [**p_ut_activate_accounting_code**](docs/AccountingCodesApi.md#p_ut_activate_accounting_code) | **PUT** /accounting-codes/{ac-id}/activate | Activate accounting code
*SwaggerClient::AccountingCodesApi* | [**p_ut_deactivate_accounting_code**](docs/AccountingCodesApi.md#p_ut_deactivate_accounting_code) | **PUT** /accounting-codes/{ac-id}/deactivate | Deactivate accounting code
*SwaggerClient::AccountingCodesApi* | [**proxy_delete_accounting_code**](docs/AccountingCodesApi.md#proxy_delete_accounting_code) | **DELETE** /object/accounting-code/{id} | CRUD: Delete AccountingCode
*SwaggerClient::AccountingCodesApi* | [**proxy_get_accounting_code**](docs/AccountingCodesApi.md#proxy_get_accounting_code) | **GET** /object/accounting-code/{id} | CRUD: Retrieve AccountingCode
*SwaggerClient::AccountingCodesApi* | [**proxy_post_accounting_code**](docs/AccountingCodesApi.md#proxy_post_accounting_code) | **POST** /object/accounting-code | CRUD: Create AccountingCode
*SwaggerClient::AccountingCodesApi* | [**proxy_put_accounting_code**](docs/AccountingCodesApi.md#proxy_put_accounting_code) | **PUT** /object/accounting-code/{id} | CRUD: Update AccountingCode
*SwaggerClient::AccountingPeriodsApi* | [**d_elete_accounting_period**](docs/AccountingPeriodsApi.md#d_elete_accounting_period) | **DELETE** /accounting-periods/{ap-id} | Delete accounting period
*SwaggerClient::AccountingPeriodsApi* | [**g_et_accounting_period**](docs/AccountingPeriodsApi.md#g_et_accounting_period) | **GET** /accounting-periods/{ap-id} | Get accounting period
*SwaggerClient::AccountingPeriodsApi* | [**g_et_accounting_periods**](docs/AccountingPeriodsApi.md#g_et_accounting_periods) | **GET** /accounting-periods | Get all accounting periods
*SwaggerClient::AccountingPeriodsApi* | [**p_ost_accounting_period**](docs/AccountingPeriodsApi.md#p_ost_accounting_period) | **POST** /accounting-periods | Create accounting period
*SwaggerClient::AccountingPeriodsApi* | [**p_ut_close_accounting_period**](docs/AccountingPeriodsApi.md#p_ut_close_accounting_period) | **PUT** /accounting-periods/{ap-id}/close | Close accounting period
*SwaggerClient::AccountingPeriodsApi* | [**p_ut_pending_close_accounting_period**](docs/AccountingPeriodsApi.md#p_ut_pending_close_accounting_period) | **PUT** /accounting-periods/{ap-id}/pending-close | Set accounting period to pending close
*SwaggerClient::AccountingPeriodsApi* | [**p_ut_reopen_accounting_period**](docs/AccountingPeriodsApi.md#p_ut_reopen_accounting_period) | **PUT** /accounting-periods/{ap-id}/reopen | Re-open accounting period
*SwaggerClient::AccountingPeriodsApi* | [**p_ut_run_trial_balance**](docs/AccountingPeriodsApi.md#p_ut_run_trial_balance) | **PUT** /accounting-periods/{ap-id}/run-trial-balance | Run trial balance
*SwaggerClient::AccountingPeriodsApi* | [**p_ut_update_accounting_period**](docs/AccountingPeriodsApi.md#p_ut_update_accounting_period) | **PUT** /accounting-periods/{ap-id} | Update accounting period
*SwaggerClient::AccountingPeriodsApi* | [**proxy_delete_accounting_period**](docs/AccountingPeriodsApi.md#proxy_delete_accounting_period) | **DELETE** /object/accounting-period/{id} | CRUD: Delete AccountingPeriod
*SwaggerClient::AccountingPeriodsApi* | [**proxy_get_accounting_period**](docs/AccountingPeriodsApi.md#proxy_get_accounting_period) | **GET** /object/accounting-period/{id} | CRUD: Retrieve AccountingPeriod
*SwaggerClient::AccountsApi* | [**g_et_account**](docs/AccountsApi.md#g_et_account) | **GET** /accounts/{account-key} | Get account
*SwaggerClient::AccountsApi* | [**g_et_account_summary**](docs/AccountsApi.md#g_et_account_summary) | **GET** /accounts/{account-key}/Summary | Get account summary
*SwaggerClient::AccountsApi* | [**p_ost_account**](docs/AccountsApi.md#p_ost_account) | **POST** /accounts | Create account
*SwaggerClient::AccountsApi* | [**p_ut_account**](docs/AccountsApi.md#p_ut_account) | **PUT** /accounts/{account-key} | Update account
*SwaggerClient::AccountsApi* | [**proxy_delete_account**](docs/AccountsApi.md#proxy_delete_account) | **DELETE** /object/account/{id} | CRUD: Delete Account
*SwaggerClient::AccountsApi* | [**proxy_get_account**](docs/AccountsApi.md#proxy_get_account) | **GET** /object/account/{id} | CRUD: Retrieve Account
*SwaggerClient::AccountsApi* | [**proxy_post_account**](docs/AccountsApi.md#proxy_post_account) | **POST** /object/account | CRUD: Create Account
*SwaggerClient::AccountsApi* | [**proxy_put_account**](docs/AccountsApi.md#proxy_put_account) | **PUT** /object/account/{id} | CRUD: Update Account
*SwaggerClient::ActionsApi* | [**proxy_action_pos_tamend**](docs/ActionsApi.md#proxy_action_pos_tamend) | **POST** /action/amend | Amend
*SwaggerClient::ActionsApi* | [**proxy_action_pos_tcreate**](docs/ActionsApi.md#proxy_action_pos_tcreate) | **POST** /action/create | Create
*SwaggerClient::ActionsApi* | [**proxy_action_pos_tdelete**](docs/ActionsApi.md#proxy_action_pos_tdelete) | **POST** /action/delete | Delete
*SwaggerClient::ActionsApi* | [**proxy_action_pos_texecute**](docs/ActionsApi.md#proxy_action_pos_texecute) | **POST** /action/execute | Execute
*SwaggerClient::ActionsApi* | [**proxy_action_pos_tgenerate**](docs/ActionsApi.md#proxy_action_pos_tgenerate) | **POST** /action/generate | Generate
*SwaggerClient::ActionsApi* | [**proxy_action_pos_tquery**](docs/ActionsApi.md#proxy_action_pos_tquery) | **POST** /action/query | Query
*SwaggerClient::ActionsApi* | [**proxy_action_pos_tquery_more**](docs/ActionsApi.md#proxy_action_pos_tquery_more) | **POST** /action/queryMore | QueryMore
*SwaggerClient::ActionsApi* | [**proxy_action_pos_tsubscribe**](docs/ActionsApi.md#proxy_action_pos_tsubscribe) | **POST** /action/subscribe | Subscribe
*SwaggerClient::ActionsApi* | [**proxy_action_pos_tupdate**](docs/ActionsApi.md#proxy_action_pos_tupdate) | **POST** /action/update | Update
*SwaggerClient::AmendmentsApi* | [**g_et_amendment**](docs/AmendmentsApi.md#g_et_amendment) | **GET** /amendments/{amendment-key} | Get amendments by key
*SwaggerClient::AmendmentsApi* | [**g_et_amendments_by_subscription_id**](docs/AmendmentsApi.md#g_et_amendments_by_subscription_id) | **GET** /amendments/subscriptions/{subscription-id} | Get amendments by subscription ID
*SwaggerClient::AmendmentsApi* | [**proxy_delete_amendment**](docs/AmendmentsApi.md#proxy_delete_amendment) | **DELETE** /object/amendment/{id} | CRUD: Delete Amendment
*SwaggerClient::AmendmentsApi* | [**proxy_get_amendment**](docs/AmendmentsApi.md#proxy_get_amendment) | **GET** /object/amendment/{id} | CRUD: Retrieve Amendment
*SwaggerClient::AmendmentsApi* | [**proxy_post_amendment**](docs/AmendmentsApi.md#proxy_post_amendment) | **POST** /object/amendment | CRUD: Create Amendment
*SwaggerClient::AmendmentsApi* | [**proxy_put_amendment**](docs/AmendmentsApi.md#proxy_put_amendment) | **PUT** /object/amendment/{id} | CRUD: Update Amendment
*SwaggerClient::AttachmentsApi* | [**d_elete_attachments**](docs/AttachmentsApi.md#d_elete_attachments) | **DELETE** /attachments/{attachment-id} | Delete attachments
*SwaggerClient::AttachmentsApi* | [**g_et_attachments**](docs/AttachmentsApi.md#g_et_attachments) | **GET** /attachments/{attachment-id} | View attachments
*SwaggerClient::AttachmentsApi* | [**g_et_attachments_response**](docs/AttachmentsApi.md#g_et_attachments_response) | **GET** /attachments/{object-type}/{object-key} | View attachments list
*SwaggerClient::AttachmentsApi* | [**p_ost_attachments**](docs/AttachmentsApi.md#p_ost_attachments) | **POST** /attachments | Add attachments
*SwaggerClient::AttachmentsApi* | [**p_ut_attachments**](docs/AttachmentsApi.md#p_ut_attachments) | **PUT** /attachments/{attachment-id} | Edit attachments
*SwaggerClient::CatalogApi* | [**g_et_catalog**](docs/CatalogApi.md#g_et_catalog) | **GET** /catalog/products | Get product catalog
*SwaggerClient::ChargeRevenueSummariesApi* | [**g_etcrs_by_charge_id**](docs/ChargeRevenueSummariesApi.md#g_etcrs_by_charge_id) | **GET** /charge-revenue-summaries/subscription-charges/{charge-key} | Get charge summary details by charge ID
*SwaggerClient::ChargeRevenueSummariesApi* | [**g_etcrs_by_crs_number**](docs/ChargeRevenueSummariesApi.md#g_etcrs_by_crs_number) | **GET** /charge-revenue-summaries/{crs-number} | Get charge summary details by CRS number
*SwaggerClient::CommunicationProfilesApi* | [**proxy_delete_communication_profile**](docs/CommunicationProfilesApi.md#proxy_delete_communication_profile) | **DELETE** /object/communication-profile/{id} | CRUD: Delete CommunicationProfile
*SwaggerClient::CommunicationProfilesApi* | [**proxy_get_communication_profile**](docs/CommunicationProfilesApi.md#proxy_get_communication_profile) | **GET** /object/communication-profile/{id} | CRUD: Retrieve CommunicationProfile
*SwaggerClient::ConnectionsApi* | [**p_ost_connections**](docs/ConnectionsApi.md#p_ost_connections) | **POST** /connections | Establish connection to Zuora REST API service
*SwaggerClient::ContactsApi* | [**proxy_delete_contact**](docs/ContactsApi.md#proxy_delete_contact) | **DELETE** /object/contact/{id} | CRUD: Delete Contact
*SwaggerClient::ContactsApi* | [**proxy_get_contact**](docs/ContactsApi.md#proxy_get_contact) | **GET** /object/contact/{id} | CRUD: Retrieve Contact
*SwaggerClient::ContactsApi* | [**proxy_post_contact**](docs/ContactsApi.md#proxy_post_contact) | **POST** /object/contact | CRUD: Create Contact
*SwaggerClient::ContactsApi* | [**proxy_put_contact**](docs/ContactsApi.md#proxy_put_contact) | **PUT** /object/contact/{id} | CRUD: Update Contact
*SwaggerClient::CreditBalanceAdjustmentsApi* | [**proxy_delete_credit_balance_adjustment**](docs/CreditBalanceAdjustmentsApi.md#proxy_delete_credit_balance_adjustment) | **DELETE** /object/credit-balance-adjustment/{id} | CRUD: Delete CreditBalanceAdjustment
*SwaggerClient::CreditBalanceAdjustmentsApi* | [**proxy_get_credit_balance_adjustment**](docs/CreditBalanceAdjustmentsApi.md#proxy_get_credit_balance_adjustment) | **GET** /object/credit-balance-adjustment/{id} | CRUD: Retrieve CreditBalanceAdjustment
*SwaggerClient::CustomExchangeRatesApi* | [**g_et_custom_exchange_rates**](docs/CustomExchangeRatesApi.md#g_et_custom_exchange_rates) | **GET** /custom-exchange-rates/{currency} | Get custom foreign currency exchange rates
*SwaggerClient::ExportsApi* | [**proxy_delete_export**](docs/ExportsApi.md#proxy_delete_export) | **DELETE** /object/export/{id} | CRUD: Delete Export
*SwaggerClient::ExportsApi* | [**proxy_get_export**](docs/ExportsApi.md#proxy_get_export) | **GET** /object/export/{id} | CRUD: Retrieve Export
*SwaggerClient::ExportsApi* | [**proxy_post_export**](docs/ExportsApi.md#proxy_post_export) | **POST** /object/export | CRUD: Create Export
*SwaggerClient::FeaturesApi* | [**proxy_delete_feature**](docs/FeaturesApi.md#proxy_delete_feature) | **DELETE** /object/feature/{id} | CRUD: Delete Feature
*SwaggerClient::FeaturesApi* | [**proxy_get_feature**](docs/FeaturesApi.md#proxy_get_feature) | **GET** /object/feature/{id} | CRUD: Retrieve Feature
*SwaggerClient::GetFilesApi* | [**g_et_files**](docs/GetFilesApi.md#g_et_files) | **GET** /files/{file-id} | Get files
*SwaggerClient::HMACSignaturesApi* | [**p_osthmac_signature**](docs/HMACSignaturesApi.md#p_osthmac_signature) | **POST** /hmac-signatures | Return HMAC signatures
*SwaggerClient::HostedPagesApi* | [**get_hosted_pages**](docs/HostedPagesApi.md#get_hosted_pages) | **GET** /hostedpages | Return hosted pages
*SwaggerClient::ImportsApi* | [**proxy_delete_import**](docs/ImportsApi.md#proxy_delete_import) | **DELETE** /object/import/{id} | CRUD: Delete Import
*SwaggerClient::ImportsApi* | [**proxy_get_import**](docs/ImportsApi.md#proxy_get_import) | **GET** /object/import/{id} | CRUD: Retrieve Import
*SwaggerClient::InvoiceAdjustmentsApi* | [**proxy_delete_invoice_adjustment**](docs/InvoiceAdjustmentsApi.md#proxy_delete_invoice_adjustment) | **DELETE** /object/invoice-adjustment/{id} | CRUD: Delete InvoiceAdjustment
*SwaggerClient::InvoiceAdjustmentsApi* | [**proxy_get_invoice_adjustment**](docs/InvoiceAdjustmentsApi.md#proxy_get_invoice_adjustment) | **GET** /object/invoice-adjustment/{id} | CRUD: Retrieve InvoiceAdjustment
*SwaggerClient::InvoiceAdjustmentsApi* | [**proxy_post_invoice_adjustment**](docs/InvoiceAdjustmentsApi.md#proxy_post_invoice_adjustment) | **POST** /object/invoice-adjustment | CRUD: Create InvoiceAdjustment
*SwaggerClient::InvoiceAdjustmentsApi* | [**proxy_put_invoice_adjustment**](docs/InvoiceAdjustmentsApi.md#proxy_put_invoice_adjustment) | **PUT** /object/invoice-adjustment/{id} | CRUD: Update InvoiceAdjustment
*SwaggerClient::InvoiceItemAdjustmentsApi* | [**proxy_delete_invoice_item_adjustment**](docs/InvoiceItemAdjustmentsApi.md#proxy_delete_invoice_item_adjustment) | **DELETE** /object/invoice-item-adjustment/{id} | CRUD: Delete InvoiceItemAdjustment
*SwaggerClient::InvoiceItemAdjustmentsApi* | [**proxy_get_invoice_item_adjustment**](docs/InvoiceItemAdjustmentsApi.md#proxy_get_invoice_item_adjustment) | **GET** /object/invoice-item-adjustment/{id} | CRUD: Retrieve InvoiceItemAdjustment
*SwaggerClient::InvoiceItemsApi* | [**proxy_delete_invoice_item**](docs/InvoiceItemsApi.md#proxy_delete_invoice_item) | **DELETE** /object/invoice-item/{id} | CRUD: Delete InvoiceItem
*SwaggerClient::InvoiceItemsApi* | [**proxy_get_invoice_item**](docs/InvoiceItemsApi.md#proxy_get_invoice_item) | **GET** /object/invoice-item/{id} | CRUD: Retrieve InvoiceItem
*SwaggerClient::InvoicePaymentsApi* | [**proxy_delete_invoice_payment**](docs/InvoicePaymentsApi.md#proxy_delete_invoice_payment) | **DELETE** /object/invoice-payment/{id} | CRUD: Delete InvoicePayment
*SwaggerClient::InvoicePaymentsApi* | [**proxy_get_invoice_payment**](docs/InvoicePaymentsApi.md#proxy_get_invoice_payment) | **GET** /object/invoice-payment/{id} | CRUD: Retrieve InvoicePayment
*SwaggerClient::InvoicePaymentsApi* | [**proxy_post_invoice_payment**](docs/InvoicePaymentsApi.md#proxy_post_invoice_payment) | **POST** /object/invoice-payment | CRUD: Create InvoicePayment
*SwaggerClient::InvoicePaymentsApi* | [**proxy_put_invoice_payment**](docs/InvoicePaymentsApi.md#proxy_put_invoice_payment) | **PUT** /object/invoice-payment/{id} | CRUD: Update InvoicePayment
*SwaggerClient::InvoiceSplitItemsApi* | [**proxy_delete_invoice_split_item**](docs/InvoiceSplitItemsApi.md#proxy_delete_invoice_split_item) | **DELETE** /object/invoice-split-item/{id} | CRUD: Delete InvoiceSplitItem
*SwaggerClient::InvoiceSplitItemsApi* | [**proxy_get_invoice_split_item**](docs/InvoiceSplitItemsApi.md#proxy_get_invoice_split_item) | **GET** /object/invoice-split-item/{id} | CRUD: Retrieve InvoiceSplitItem
*SwaggerClient::InvoiceSplitsApi* | [**proxy_delete_invoice_split**](docs/InvoiceSplitsApi.md#proxy_delete_invoice_split) | **DELETE** /object/invoice-split/{id} | CRUD: Delete InvoiceSplit
*SwaggerClient::InvoiceSplitsApi* | [**proxy_get_invoice_split**](docs/InvoiceSplitsApi.md#proxy_get_invoice_split) | **GET** /object/invoice-split/{id} | CRUD: Retrieve InvoiceSplit
*SwaggerClient::InvoicesApi* | [**proxy_delete_invoice**](docs/InvoicesApi.md#proxy_delete_invoice) | **DELETE** /object/invoice/{id} | CRUD: Delete Invoice
*SwaggerClient::InvoicesApi* | [**proxy_get_invoice**](docs/InvoicesApi.md#proxy_get_invoice) | **GET** /object/invoice/{id} | CRUD: Retrieve Invoice
*SwaggerClient::InvoicesApi* | [**proxy_post_invoice**](docs/InvoicesApi.md#proxy_post_invoice) | **POST** /object/invoice | CRUD: Create Invoice
*SwaggerClient::InvoicesApi* | [**proxy_put_invoice**](docs/InvoicesApi.md#proxy_put_invoice) | **PUT** /object/invoice/{id} | CRUD: Update Invoice
*SwaggerClient::JournalRunsApi* | [**d_elete_journal_run**](docs/JournalRunsApi.md#d_elete_journal_run) | **DELETE** /journal-runs/{jr-number} | Delete journal run
*SwaggerClient::JournalRunsApi* | [**g_et_journal_run**](docs/JournalRunsApi.md#g_et_journal_run) | **GET** /journal-runs/{jr-number} | Get journal run
*SwaggerClient::JournalRunsApi* | [**p_ost_journal_run**](docs/JournalRunsApi.md#p_ost_journal_run) | **POST** /journal-runs | Create journal run
*SwaggerClient::JournalRunsApi* | [**p_ut_journal_run**](docs/JournalRunsApi.md#p_ut_journal_run) | **PUT** /journal-runs/{jr-number}/cancel | Cancel journal run
*SwaggerClient::MassUpdaterApi* | [**g_et_mass_update**](docs/MassUpdaterApi.md#g_et_mass_update) | **GET** /bulk/{bulk-key} | Get mass action result
*SwaggerClient::MassUpdaterApi* | [**p_ost_mass_update**](docs/MassUpdaterApi.md#p_ost_mass_update) | **POST** /bulk | Perform mass action
*SwaggerClient::MassUpdaterApi* | [**p_ut_mass_updater**](docs/MassUpdaterApi.md#p_ut_mass_updater) | **PUT** /bulk/{bulk-key}/stop | Stop mass action
*SwaggerClient::NotificationHistoryApi* | [**g_et_callout_history_v_os**](docs/NotificationHistoryApi.md#g_et_callout_history_v_os) | **GET** /notification-history/callout | Get callout notification histories
*SwaggerClient::NotificationHistoryApi* | [**g_et_email_history_v_os**](docs/NotificationHistoryApi.md#g_et_email_history_v_os) | **GET** /notification-history/email | Get email notification histories
*SwaggerClient::OperationsApi* | [**p_ost_transaction_invoice_payment**](docs/OperationsApi.md#p_ost_transaction_invoice_payment) | **POST** /operations/invoice-collect | Invoice and collect
*SwaggerClient::PaymentMethodSnapshotsApi* | [**proxy_delete_payment_method_snapshot**](docs/PaymentMethodSnapshotsApi.md#proxy_delete_payment_method_snapshot) | **DELETE** /object/payment-method-snapshot/{id} | CRUD: Delete PaymentMethodSnapshot
*SwaggerClient::PaymentMethodSnapshotsApi* | [**proxy_get_payment_method_snapshot**](docs/PaymentMethodSnapshotsApi.md#proxy_get_payment_method_snapshot) | **GET** /object/payment-method-snapshot/{id} | CRUD: Retrieve PaymentMethodSnapshot
*SwaggerClient::PaymentMethodTransactionLogsApi* | [**proxy_delete_payment_method_transaction_log**](docs/PaymentMethodTransactionLogsApi.md#proxy_delete_payment_method_transaction_log) | **DELETE** /object/payment-method-transaction-log/{id} | CRUD: Delete PaymentMethodTransactionLog
*SwaggerClient::PaymentMethodTransactionLogsApi* | [**proxy_get_payment_method_transaction_log**](docs/PaymentMethodTransactionLogsApi.md#proxy_get_payment_method_transaction_log) | **GET** /object/payment-method-transaction-log/{id} | CRUD: Retrieve PaymentMethodTransactionLog
*SwaggerClient::PaymentMethodsApi* | [**d_elete_payment_methods**](docs/PaymentMethodsApi.md#d_elete_payment_methods) | **DELETE** /payment-methods/{payment-method-id} | Delete payment method
*SwaggerClient::PaymentMethodsApi* | [**g_et_payment_methods**](docs/PaymentMethodsApi.md#g_et_payment_methods) | **GET** /payment-methods/credit-cards/accounts/{account-key} | Get payment methods
*SwaggerClient::PaymentMethodsApi* | [**p_ost_payment_method**](docs/PaymentMethodsApi.md#p_ost_payment_method) | **POST** /payment-methods/credit-cards | Create payment method
*SwaggerClient::PaymentMethodsApi* | [**p_ut_payment_methods**](docs/PaymentMethodsApi.md#p_ut_payment_methods) | **PUT** /payment-methods/credit-cards/{payment-method-id} | Update payment method
*SwaggerClient::PaymentMethodsApi* | [**proxy_delete_payment_method**](docs/PaymentMethodsApi.md#proxy_delete_payment_method) | **DELETE** /object/payment-method/{id} | CRUD: Delete PaymentMethod
*SwaggerClient::PaymentMethodsApi* | [**proxy_get_payment_method**](docs/PaymentMethodsApi.md#proxy_get_payment_method) | **GET** /object/payment-method/{id} | CRUD: Retrieve PaymentMethod
*SwaggerClient::PaymentMethodsApi* | [**proxy_post_payment_method**](docs/PaymentMethodsApi.md#proxy_post_payment_method) | **POST** /object/payment-method | CRUD: Create PaymentMethod
*SwaggerClient::PaymentMethodsApi* | [**proxy_put_payment_method**](docs/PaymentMethodsApi.md#proxy_put_payment_method) | **PUT** /object/payment-method/{id} | CRUD: Update PaymentMethod
*SwaggerClient::PaymentTransactionLogsApi* | [**proxy_delete_payment_transaction_log**](docs/PaymentTransactionLogsApi.md#proxy_delete_payment_transaction_log) | **DELETE** /object/payment-transaction-log/{id} | CRUD: Delete PaymentTransactionLog
*SwaggerClient::PaymentTransactionLogsApi* | [**proxy_get_payment_transaction_log**](docs/PaymentTransactionLogsApi.md#proxy_get_payment_transaction_log) | **GET** /object/payment-transaction-log/{id} | CRUD: Retrieve PaymentTransactionLog
*SwaggerClient::PaymentsApi* | [**proxy_delete_payment**](docs/PaymentsApi.md#proxy_delete_payment) | **DELETE** /object/payment/{id} | CRUD: Delete Payment
*SwaggerClient::PaymentsApi* | [**proxy_get_payment**](docs/PaymentsApi.md#proxy_get_payment) | **GET** /object/payment/{id} | CRUD: Retrieve Payment
*SwaggerClient::PaymentsApi* | [**proxy_post_payment**](docs/PaymentsApi.md#proxy_post_payment) | **POST** /object/payment | CRUD: Create Payment
*SwaggerClient::PaymentsApi* | [**proxy_put_payment**](docs/PaymentsApi.md#proxy_put_payment) | **PUT** /object/payment/{id} | CRUD: Update Payment
*SwaggerClient::ProductFeaturesApi* | [**proxy_delete_product_feature**](docs/ProductFeaturesApi.md#proxy_delete_product_feature) | **DELETE** /object/product-feature/{id} | CRUD: Delete ProductFeature
*SwaggerClient::ProductFeaturesApi* | [**proxy_get_product_feature**](docs/ProductFeaturesApi.md#proxy_get_product_feature) | **GET** /object/product-feature/{id} | CRUD: Retrieve ProductFeature
*SwaggerClient::ProductRatePlanChargeTiersApi* | [**proxy_delete_product_rate_plan_charge_tier**](docs/ProductRatePlanChargeTiersApi.md#proxy_delete_product_rate_plan_charge_tier) | **DELETE** /object/product-rate-plan-charge-tier/{id} | CRUD: Delete ProductRatePlanChargeTier
*SwaggerClient::ProductRatePlanChargeTiersApi* | [**proxy_get_product_rate_plan_charge_tier**](docs/ProductRatePlanChargeTiersApi.md#proxy_get_product_rate_plan_charge_tier) | **GET** /object/product-rate-plan-charge-tier/{id} | CRUD: Retrieve ProductRatePlanChargeTier
*SwaggerClient::ProductRatePlanChargesApi* | [**proxy_delete_product_rate_plan_charge**](docs/ProductRatePlanChargesApi.md#proxy_delete_product_rate_plan_charge) | **DELETE** /object/product-rate-plan-charge/{id} | CRUD: Delete ProductRatePlanCharge
*SwaggerClient::ProductRatePlanChargesApi* | [**proxy_get_product_rate_plan_charge**](docs/ProductRatePlanChargesApi.md#proxy_get_product_rate_plan_charge) | **GET** /object/product-rate-plan-charge/{id} | CRUD: Retrieve ProductRatePlanCharge
*SwaggerClient::ProductRatePlansApi* | [**proxy_delete_product_rate_plan**](docs/ProductRatePlansApi.md#proxy_delete_product_rate_plan) | **DELETE** /object/product-rate-plan/{id} | CRUD: Delete ProductRatePlan
*SwaggerClient::ProductRatePlansApi* | [**proxy_get_product_rate_plan**](docs/ProductRatePlansApi.md#proxy_get_product_rate_plan) | **GET** /object/product-rate-plan/{id} | CRUD: Retrieve ProductRatePlan
*SwaggerClient::ProductRatePlansApi* | [**proxy_post_product_rate_plan**](docs/ProductRatePlansApi.md#proxy_post_product_rate_plan) | **POST** /object/product-rate-plan | CRUD: Create ProductRatePlan
*SwaggerClient::ProductRatePlansApi* | [**proxy_put_product_rate_plan**](docs/ProductRatePlansApi.md#proxy_put_product_rate_plan) | **PUT** /object/product-rate-plan/{id} | CRUD: Update ProductRatePlan
*SwaggerClient::ProductsApi* | [**proxy_delete_product**](docs/ProductsApi.md#proxy_delete_product) | **DELETE** /object/product/{id} | CRUD: Delete Product
*SwaggerClient::ProductsApi* | [**proxy_get_product**](docs/ProductsApi.md#proxy_get_product) | **GET** /object/product/{id} | CRUD: Retrieve Product
*SwaggerClient::ProductsApi* | [**proxy_post_product**](docs/ProductsApi.md#proxy_post_product) | **POST** /object/product | CRUD: Create Product
*SwaggerClient::ProductsApi* | [**proxy_put_product**](docs/ProductsApi.md#proxy_put_product) | **PUT** /object/product/{id} | CRUD: Update Product
*SwaggerClient::QuotesDocumentApi* | [**p_ost_quote_doc**](docs/QuotesDocumentApi.md#p_ost_quote_doc) | **POST** /quotes/document | Generate quotes document
*SwaggerClient::RSASignaturesApi* | [**p_ost_decrypt_response**](docs/RSASignaturesApi.md#p_ost_decrypt_response) | **POST** /rsa-signatures/decrypt | Decrypt RSA signature
*SwaggerClient::RSASignaturesApi* | [**p_ostrsa_signature**](docs/RSASignaturesApi.md#p_ostrsa_signature) | **POST** /rsa-signatures | Generate RSA signature
*SwaggerClient::RatePlanChargeTiersApi* | [**proxy_delete_rate_plan_charge_tier**](docs/RatePlanChargeTiersApi.md#proxy_delete_rate_plan_charge_tier) | **DELETE** /object/rate-plan-charge-tier/{id} | CRUD: Delete RatePlanChargeTier
*SwaggerClient::RatePlanChargeTiersApi* | [**proxy_get_rate_plan_charge_tier**](docs/RatePlanChargeTiersApi.md#proxy_get_rate_plan_charge_tier) | **GET** /object/rate-plan-charge-tier/{id} | CRUD: Retrieve RatePlanChargeTier
*SwaggerClient::RatePlanChargesApi* | [**proxy_delete_rate_plan_charge**](docs/RatePlanChargesApi.md#proxy_delete_rate_plan_charge) | **DELETE** /object/rate-plan-charge/{id} | CRUD: Delete RatePlanCharge
*SwaggerClient::RatePlanChargesApi* | [**proxy_get_rate_plan_charge**](docs/RatePlanChargesApi.md#proxy_get_rate_plan_charge) | **GET** /object/rate-plan-charge/{id} | CRUD: Retrieve RatePlanCharge
*SwaggerClient::RatePlansApi* | [**proxy_delete_rate_plan**](docs/RatePlansApi.md#proxy_delete_rate_plan) | **DELETE** /object/rate-plan/{id} | CRUD: Delete RatePlan
*SwaggerClient::RatePlansApi* | [**proxy_get_rate_plan**](docs/RatePlansApi.md#proxy_get_rate_plan) | **GET** /object/rate-plan/{id} | CRUD: Retrieve RatePlan
*SwaggerClient::RefundInvoicePaymentsApi* | [**proxy_delete_refund_invoice_payment**](docs/RefundInvoicePaymentsApi.md#proxy_delete_refund_invoice_payment) | **DELETE** /object/refund-invoice-payment/{id} | CRUD: Delete RefundInvoicePayment
*SwaggerClient::RefundInvoicePaymentsApi* | [**proxy_get_refund_invoice_payment**](docs/RefundInvoicePaymentsApi.md#proxy_get_refund_invoice_payment) | **GET** /object/refund-invoice-payment/{id} | CRUD: Retrieve RefundInvoicePayment
*SwaggerClient::RefundTransactionLogsApi* | [**proxy_delete_refund_transaction_log**](docs/RefundTransactionLogsApi.md#proxy_delete_refund_transaction_log) | **DELETE** /object/refund-transaction-log/{id} | CRUD: Delete RefundTransactionLog
*SwaggerClient::RefundTransactionLogsApi* | [**proxy_get_refund_transaction_log**](docs/RefundTransactionLogsApi.md#proxy_get_refund_transaction_log) | **GET** /object/refund-transaction-log/{id} | CRUD: Retrieve RefundTransactionLog
*SwaggerClient::RefundsApi* | [**proxy_delete_refund**](docs/RefundsApi.md#proxy_delete_refund) | **DELETE** /object/refund/{id} | CRUD: Delete Refund
*SwaggerClient::RefundsApi* | [**proxy_get_refund**](docs/RefundsApi.md#proxy_get_refund) | **GET** /object/refund/{id} | CRUD: Retrieve Refund
*SwaggerClient::RefundsApi* | [**proxy_post_refund**](docs/RefundsApi.md#proxy_post_refund) | **POST** /object/refund | CRUD: Create Refund
*SwaggerClient::RefundsApi* | [**proxy_put_refund**](docs/RefundsApi.md#proxy_put_refund) | **PUT** /object/refund/{id} | CRUD: Update Refund
*SwaggerClient::RevenueEventsApi* | [**g_et_revenue_event_details**](docs/RevenueEventsApi.md#g_et_revenue_event_details) | **GET** /revenue-events/revenue-schedules/{rs-number} | Get revenue events for a revenue schedule
*SwaggerClient::RevenueEventsApi* | [**g_et_revenue_event_details_0**](docs/RevenueEventsApi.md#g_et_revenue_event_details_0) | **GET** /revenue-events/{event-number} | Get revenue event details
*SwaggerClient::RevenueItemsApi* | [**g_et_revenue_items_by_charge_revenue_event_number**](docs/RevenueItemsApi.md#g_et_revenue_items_by_charge_revenue_event_number) | **GET** /revenue-items/revenue-events/{event-number} | Get revenue items by revenue event number
*SwaggerClient::RevenueItemsApi* | [**g_et_revenue_items_by_charge_revenue_summary_number**](docs/RevenueItemsApi.md#g_et_revenue_items_by_charge_revenue_summary_number) | **GET** /revenue-items/charge-revenue-summaries/{crs-number} | Get revenue items by charge revenue summary number
*SwaggerClient::RevenueItemsApi* | [**g_et_revenue_items_by_revenue_schedule**](docs/RevenueItemsApi.md#g_et_revenue_items_by_revenue_schedule) | **GET** /revenue-items/revenue-schedules/{rs-number} | Get revenue items by revenue schedule
*SwaggerClient::RevenueItemsApi* | [**p_ut_custom_fieldson_revenue_items_by_revenue_event**](docs/RevenueItemsApi.md#p_ut_custom_fieldson_revenue_items_by_revenue_event) | **PUT** /revenue-items/revenue-events/{event-number} | Update custom fields on revenue items by revenue event number
*SwaggerClient::RevenueItemsApi* | [**p_ut_custom_fieldson_revenue_items_by_revenue_schedule**](docs/RevenueItemsApi.md#p_ut_custom_fieldson_revenue_items_by_revenue_schedule) | **PUT** /revenue-items/revenue-schedules/{rs-number} | Update custom fields on revenue items by revenue schedule number
*SwaggerClient::RevenueRulesApi* | [**g_et_revenue_recognition_rule_association**](docs/RevenueRulesApi.md#g_et_revenue_recognition_rule_association) | **GET** /revenue-recognition-rules/subscription-charges/{charge-key} | Get the rule associated with a charge
*SwaggerClient::RevenueSchedulesApi* | [**d_eleters**](docs/RevenueSchedulesApi.md#d_eleters) | **DELETE** /revenue-schedules/{rs-number} | Delete revenue schedule
*SwaggerClient::RevenueSchedulesApi* | [**g_etr_sby_invoice_item**](docs/RevenueSchedulesApi.md#g_etr_sby_invoice_item) | **GET** /revenue-schedules/invoice-items/{invoice-item-id} | Get a revenue schedule by invoice item ID
*SwaggerClient::RevenueSchedulesApi* | [**g_etr_sby_invoice_item_adjustment**](docs/RevenueSchedulesApi.md#g_etr_sby_invoice_item_adjustment) | **GET** /revenue-schedules/invoice-item-adjustments/{invoice-item-adj-id}/ | Get a revenue schedule by invoice item adjustment
*SwaggerClient::RevenueSchedulesApi* | [**g_etrs_detail**](docs/RevenueSchedulesApi.md#g_etrs_detail) | **GET** /revenue-schedules/{rs-number} | Get revenue schedule details
*SwaggerClient::RevenueSchedulesApi* | [**g_etrs_details_by_charge**](docs/RevenueSchedulesApi.md#g_etrs_details_by_charge) | **GET** /revenue-schedules/subscription-charges/{charge-key} | Get revenue schedule by subscription charge
*SwaggerClient::RevenueSchedulesApi* | [**p_ost_revenue_schedule_by_charge_response**](docs/RevenueSchedulesApi.md#p_ost_revenue_schedule_by_charge_response) | **POST** /revenue-schedules/subscription-charges/{charge-key} | Create a revenue schedule on a subscription charge
*SwaggerClient::RevenueSchedulesApi* | [**p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range**](docs/RevenueSchedulesApi.md#p_ostr_sfor_invoice_item_adjustment_distribute_by_date_range) | **POST** /revenue-schedules/invoice-item-adjustments/{invoice-item-adj-key}/distribute-revenue-with-date-range | Create a revenue schedule for an Invoice Item Adjustment (distribute by date range)
*SwaggerClient::RevenueSchedulesApi* | [**p_ostr_sfor_invoice_item_adjustment_manual_distribution**](docs/RevenueSchedulesApi.md#p_ostr_sfor_invoice_item_adjustment_manual_distribution) | **POST** /revenue-schedules/invoice-item-adjustments/{invoice-item-adj-key} | Create a revenue schedule for an Invoice Item Adjustment (manual distribution)
*SwaggerClient::RevenueSchedulesApi* | [**p_ostr_sfor_invoice_item_distribute_by_date_range**](docs/RevenueSchedulesApi.md#p_ostr_sfor_invoice_item_distribute_by_date_range) | **POST** /revenue-schedules/invoice-items/{invoice-item-id}/distribute-revenue-with-date-range | Create a revenue schedule for an Invoice Item (distribute by date range)
*SwaggerClient::RevenueSchedulesApi* | [**p_ostr_sfor_invoice_item_manual_distribution**](docs/RevenueSchedulesApi.md#p_ostr_sfor_invoice_item_manual_distribution) | **POST** /revenue-schedules/invoice-items/{invoice-item-id} | Create a revenue schedule for an Invoice Item (manual distribution)
*SwaggerClient::RevenueSchedulesApi* | [**p_ut_revenue_across_ap**](docs/RevenueSchedulesApi.md#p_ut_revenue_across_ap) | **PUT** /revenue-schedules/{rs-number}/distribute-revenue-across-accounting-periods | Distribute revenue across accounting periods
*SwaggerClient::RevenueSchedulesApi* | [**p_ut_revenue_by_recognition_startand_end_dates**](docs/RevenueSchedulesApi.md#p_ut_revenue_by_recognition_startand_end_dates) | **PUT** /revenue-schedules/{rs-number}/distribute-revenue-with-date-range | Distribute revenue by recognition start and end dates
*SwaggerClient::RevenueSchedulesApi* | [**p_ut_revenue_specific_date**](docs/RevenueSchedulesApi.md#p_ut_revenue_specific_date) | **PUT** /revenue-schedules/{rs-number}/distribute-revenue-on-specific-date | Distribute revenue on a specific date
*SwaggerClient::RevenueSchedulesApi* | [**p_utrs_basic_info**](docs/RevenueSchedulesApi.md#p_utrs_basic_info) | **PUT** /revenue-schedules/{rs-number}/basic-information | Update revenue schedule basic information
*SwaggerClient::SettingsApi* | [**g_et_revenue_start_date_setting**](docs/SettingsApi.md#g_et_revenue_start_date_setting) | **GET** /settings/finance/revenue-automation-start-date | Get the revenue automation start date
*SwaggerClient::SubscriptionProductFeaturesApi* | [**proxy_delete_subscription_product_feature**](docs/SubscriptionProductFeaturesApi.md#proxy_delete_subscription_product_feature) | **DELETE** /object/subscription-product-feature/{id} | CRUD: Delete SubscriptionProductFeature
*SwaggerClient::SubscriptionProductFeaturesApi* | [**proxy_get_subscription_product_feature**](docs/SubscriptionProductFeaturesApi.md#proxy_get_subscription_product_feature) | **GET** /object/subscription-product-feature/{id} | CRUD: Retrieve SubscriptionProductFeature
*SwaggerClient::SubscriptionsApi* | [**g_et_one_subscription**](docs/SubscriptionsApi.md#g_et_one_subscription) | **GET** /subscriptions/{subscription-key} | Get subscriptions by key
*SwaggerClient::SubscriptionsApi* | [**g_et_subscription**](docs/SubscriptionsApi.md#g_et_subscription) | **GET** /subscriptions/accounts/{account-key} | Get subscriptions by account
*SwaggerClient::SubscriptionsApi* | [**p_ost_subscription**](docs/SubscriptionsApi.md#p_ost_subscription) | **POST** /subscriptions | Create subscription
*SwaggerClient::SubscriptionsApi* | [**p_ost_subscription_cancellation**](docs/SubscriptionsApi.md#p_ost_subscription_cancellation) | **PUT** /subscriptions/{subscription-key}/cancel | Cancel subscription
*SwaggerClient::SubscriptionsApi* | [**p_ost_subscription_preview**](docs/SubscriptionsApi.md#p_ost_subscription_preview) | **POST** /subscriptions/preview | Preview subscription
*SwaggerClient::SubscriptionsApi* | [**p_ut_renew_subscription**](docs/SubscriptionsApi.md#p_ut_renew_subscription) | **PUT** /subscriptions/{subscription-key}/renew | Renew subscription
*SwaggerClient::SubscriptionsApi* | [**p_ut_subscription**](docs/SubscriptionsApi.md#p_ut_subscription) | **PUT** /subscriptions/{subscription-key} | Update subscription
*SwaggerClient::SubscriptionsApi* | [**p_ut_subscription_resume**](docs/SubscriptionsApi.md#p_ut_subscription_resume) | **PUT** /subscriptions/{subscription-key}/resume | Resume subscription
*SwaggerClient::SubscriptionsApi* | [**p_ut_subscription_suspend**](docs/SubscriptionsApi.md#p_ut_subscription_suspend) | **PUT** /subscriptions/{subscription-key}/suspend | Suspend subscription
*SwaggerClient::SubscriptionsApi* | [**proxy_delete_subscription**](docs/SubscriptionsApi.md#proxy_delete_subscription) | **DELETE** /object/subscription/{id} | CRUD: Delete Subscription
*SwaggerClient::SubscriptionsApi* | [**proxy_get_subscription**](docs/SubscriptionsApi.md#proxy_get_subscription) | **GET** /object/subscription/{id} | CRUD: Retrieve Subscription
*SwaggerClient::SubscriptionsApi* | [**proxy_post_subscription**](docs/SubscriptionsApi.md#proxy_post_subscription) | **POST** /object/subscription | CRUD: Create Subscription
*SwaggerClient::SubscriptionsApi* | [**proxy_put_subscription**](docs/SubscriptionsApi.md#proxy_put_subscription) | **PUT** /object/subscription/{id} | CRUD: Update Subscription
*SwaggerClient::SummaryJournalEntriesApi* | [**d_elete_summary_journal_entry**](docs/SummaryJournalEntriesApi.md#d_elete_summary_journal_entry) | **DELETE** /journal-entries/{je-number} | Delete summary journal entry
*SwaggerClient::SummaryJournalEntriesApi* | [**g_et_journal_entries_in_journal_run**](docs/SummaryJournalEntriesApi.md#g_et_journal_entries_in_journal_run) | **GET** /journal-entries/journal-runs/{jr-number} | Get all summary journal entries in a journal run
*SwaggerClient::SummaryJournalEntriesApi* | [**g_et_journal_entry_detail**](docs/SummaryJournalEntriesApi.md#g_et_journal_entry_detail) | **GET** /journal-entries/{je-number} | Get summary journal entry
*SwaggerClient::SummaryJournalEntriesApi* | [**p_ost_journal_entry**](docs/SummaryJournalEntriesApi.md#p_ost_journal_entry) | **POST** /journal-entries | Create summary journal entry
*SwaggerClient::SummaryJournalEntriesApi* | [**p_ut_basic_summary_journal_entry**](docs/SummaryJournalEntriesApi.md#p_ut_basic_summary_journal_entry) | **PUT** /journal-entries/{je-number}/basic-information | Update basic information of a summary journal entry
*SwaggerClient::SummaryJournalEntriesApi* | [**p_ut_summary_journal_entry**](docs/SummaryJournalEntriesApi.md#p_ut_summary_journal_entry) | **PUT** /journal-entries/{je-number}/cancel | Cancel summary journal entry
*SwaggerClient::TaxationItemsApi* | [**proxy_delete_taxation_item**](docs/TaxationItemsApi.md#proxy_delete_taxation_item) | **DELETE** /object/taxation-item/{id} | CRUD: Delete TaxationItem
*SwaggerClient::TaxationItemsApi* | [**proxy_get_taxation_item**](docs/TaxationItemsApi.md#proxy_get_taxation_item) | **GET** /object/taxation-item/{id} | CRUD: Retrieve TaxationItem
*SwaggerClient::TaxationItemsApi* | [**proxy_post_taxation_item**](docs/TaxationItemsApi.md#proxy_post_taxation_item) | **POST** /object/taxation-item | CRUD: Create TaxationItem
*SwaggerClient::TaxationItemsApi* | [**proxy_put_taxation_item**](docs/TaxationItemsApi.md#proxy_put_taxation_item) | **PUT** /object/taxation-item/{id} | CRUD: Update TaxationItem
*SwaggerClient::TransactionsApi* | [**g_et_invoice**](docs/TransactionsApi.md#g_et_invoice) | **GET** /transactions/invoices/accounts/{account-key} | Get invoices
*SwaggerClient::TransactionsApi* | [**g_et_payments**](docs/TransactionsApi.md#g_et_payments) | **GET** /transactions/payments/accounts/{account-key} | Get payments
*SwaggerClient::UnitOfMeasureApi* | [**proxy_delete_unit_of_measure**](docs/UnitOfMeasureApi.md#proxy_delete_unit_of_measure) | **DELETE** /object/unit-of-measure/{id} | CRUD: Delete UnitOfMeasure
*SwaggerClient::UnitOfMeasureApi* | [**proxy_get_unit_of_measure**](docs/UnitOfMeasureApi.md#proxy_get_unit_of_measure) | **GET** /object/unit-of-measure/{id} | CRUD: Retrieve UnitOfMeasure
*SwaggerClient::UnitOfMeasureApi* | [**proxy_post_unit_of_measure**](docs/UnitOfMeasureApi.md#proxy_post_unit_of_measure) | **POST** /object/unit-of-measure | CRUD: Create UnitOfMeasure
*SwaggerClient::UnitOfMeasureApi* | [**proxy_put_unit_of_measure**](docs/UnitOfMeasureApi.md#proxy_put_unit_of_measure) | **PUT** /object/unit-of-measure/{id} | CRUD: Update UnitOfMeasure
*SwaggerClient::UsageApi* | [**g_et_usage**](docs/UsageApi.md#g_et_usage) | **GET** /usage/accounts/{account-key} | Get usage
*SwaggerClient::UsageApi* | [**p_ost_usage**](docs/UsageApi.md#p_ost_usage) | **POST** /usage | Post usage
*SwaggerClient::UsageApi* | [**proxy_delete_usage**](docs/UsageApi.md#proxy_delete_usage) | **DELETE** /object/usage/{id} | CRUD: Delete Usage
*SwaggerClient::UsageApi* | [**proxy_get_usage**](docs/UsageApi.md#proxy_get_usage) | **GET** /object/usage/{id} | CRUD: Retrieve Usage
*SwaggerClient::UsageApi* | [**proxy_post_usage**](docs/UsageApi.md#proxy_post_usage) | **POST** /object/usage | CRUD: Create Usage
*SwaggerClient::UsageApi* | [**proxy_put_usage**](docs/UsageApi.md#proxy_put_usage) | **PUT** /object/usage/{id} | CRUD: Update Usage


## Documentation for Models

 - [SwaggerClient::Account](docs/Account.md)
 - [SwaggerClient::AmendOptions](docs/AmendOptions.md)
 - [SwaggerClient::AmendRequest](docs/AmendRequest.md)
 - [SwaggerClient::AmendResult](docs/AmendResult.md)
 - [SwaggerClient::Amendment](docs/Amendment.md)
 - [SwaggerClient::ChargeMetricsData](docs/ChargeMetricsData.md)
 - [SwaggerClient::CommonResponseType](docs/CommonResponseType.md)
 - [SwaggerClient::Contact](docs/Contact.md)
 - [SwaggerClient::DeleteResult](docs/DeleteResult.md)
 - [SwaggerClient::ElectronicPaymentOptions](docs/ElectronicPaymentOptions.md)
 - [SwaggerClient::Error](docs/Error.md)
 - [SwaggerClient::EventRevenueItemType](docs/EventRevenueItemType.md)
 - [SwaggerClient::ExecuteResult](docs/ExecuteResult.md)
 - [SwaggerClient::ExternalPaymentOptions](docs/ExternalPaymentOptions.md)
 - [SwaggerClient::GETAccountSummaryInvoiceType](docs/GETAccountSummaryInvoiceType.md)
 - [SwaggerClient::GETAccountSummaryPaymentInvoiceType](docs/GETAccountSummaryPaymentInvoiceType.md)
 - [SwaggerClient::GETAccountSummaryPaymentType](docs/GETAccountSummaryPaymentType.md)
 - [SwaggerClient::GETAccountSummarySubscriptionRatePlanType](docs/GETAccountSummarySubscriptionRatePlanType.md)
 - [SwaggerClient::GETAccountSummarySubscriptionType](docs/GETAccountSummarySubscriptionType.md)
 - [SwaggerClient::GETAccountSummaryType](docs/GETAccountSummaryType.md)
 - [SwaggerClient::GETAccountSummaryTypeBasicInfo](docs/GETAccountSummaryTypeBasicInfo.md)
 - [SwaggerClient::GETAccountSummaryTypeBasicInfoDefaultPaymentMethod](docs/GETAccountSummaryTypeBasicInfoDefaultPaymentMethod.md)
 - [SwaggerClient::GETAccountSummaryTypeBillToContact](docs/GETAccountSummaryTypeBillToContact.md)
 - [SwaggerClient::GETAccountSummaryTypeSoldToContact](docs/GETAccountSummaryTypeSoldToContact.md)
 - [SwaggerClient::GETAccountSummaryTypeTaxInfo](docs/GETAccountSummaryTypeTaxInfo.md)
 - [SwaggerClient::GETAccountSummaryUsageType](docs/GETAccountSummaryUsageType.md)
 - [SwaggerClient::GETAccountType](docs/GETAccountType.md)
 - [SwaggerClient::GETAccountTypeBasicInfo](docs/GETAccountTypeBasicInfo.md)
 - [SwaggerClient::GETAccountTypeBillToContact](docs/GETAccountTypeBillToContact.md)
 - [SwaggerClient::GETAccountTypeBillingAndPayment](docs/GETAccountTypeBillingAndPayment.md)
 - [SwaggerClient::GETAccountTypeMetrics](docs/GETAccountTypeMetrics.md)
 - [SwaggerClient::GETAccountTypeSoldToContact](docs/GETAccountTypeSoldToContact.md)
 - [SwaggerClient::GETAccountingCodeItemType](docs/GETAccountingCodeItemType.md)
 - [SwaggerClient::GETAccountingCodeItemWithoutSuccessType](docs/GETAccountingCodeItemWithoutSuccessType.md)
 - [SwaggerClient::GETAccountingCodesType](docs/GETAccountingCodesType.md)
 - [SwaggerClient::GETAccountingPeriodFileIdsType](docs/GETAccountingPeriodFileIdsType.md)
 - [SwaggerClient::GETAccountingPeriodType](docs/GETAccountingPeriodType.md)
 - [SwaggerClient::GETAccountingPeriodWithoutSuccessType](docs/GETAccountingPeriodWithoutSuccessType.md)
 - [SwaggerClient::GETAccountingPeriodsType](docs/GETAccountingPeriodsType.md)
 - [SwaggerClient::GETAmendmentType](docs/GETAmendmentType.md)
 - [SwaggerClient::GETAttachmentResponseType](docs/GETAttachmentResponseType.md)
 - [SwaggerClient::GETAttachmentResponseWithoutSuccessType](docs/GETAttachmentResponseWithoutSuccessType.md)
 - [SwaggerClient::GETAttachmentsResponseType](docs/GETAttachmentsResponseType.md)
 - [SwaggerClient::GETCalloutHistoryVOType](docs/GETCalloutHistoryVOType.md)
 - [SwaggerClient::GETCalloutHistoryVOsType](docs/GETCalloutHistoryVOsType.md)
 - [SwaggerClient::GETCatalogType](docs/GETCatalogType.md)
 - [SwaggerClient::GETChargeRSDetailType](docs/GETChargeRSDetailType.md)
 - [SwaggerClient::GETCustomExchangeRatesDataType](docs/GETCustomExchangeRatesDataType.md)
 - [SwaggerClient::GETCustomExchangeRatesDataTypeDATE](docs/GETCustomExchangeRatesDataTypeDATE.md)
 - [SwaggerClient::GETCustomExchangeRatesType](docs/GETCustomExchangeRatesType.md)
 - [SwaggerClient::GETEmailHistoryVOType](docs/GETEmailHistoryVOType.md)
 - [SwaggerClient::GETEmailHistoryVOsType](docs/GETEmailHistoryVOsType.md)
 - [SwaggerClient::GETInvoiceFileType](docs/GETInvoiceFileType.md)
 - [SwaggerClient::GETInvoiceFileWrapper](docs/GETInvoiceFileWrapper.md)
 - [SwaggerClient::GETInvoiceType](docs/GETInvoiceType.md)
 - [SwaggerClient::GETInvoicesInvoiceItemType](docs/GETInvoicesInvoiceItemType.md)
 - [SwaggerClient::GETJournalEntriesInJournalRunType](docs/GETJournalEntriesInJournalRunType.md)
 - [SwaggerClient::GETJournalEntryDetailType](docs/GETJournalEntryDetailType.md)
 - [SwaggerClient::GETJournalEntryDetailTypeWithoutSuccess](docs/GETJournalEntryDetailTypeWithoutSuccess.md)
 - [SwaggerClient::GETJournalEntryItemType](docs/GETJournalEntryItemType.md)
 - [SwaggerClient::GETJournalEntrySegmentType](docs/GETJournalEntrySegmentType.md)
 - [SwaggerClient::GETJournalRunTransactionType](docs/GETJournalRunTransactionType.md)
 - [SwaggerClient::GETJournalRunType](docs/GETJournalRunType.md)
 - [SwaggerClient::GETMassUpdateType](docs/GETMassUpdateType.md)
 - [SwaggerClient::GETPaidInvoicesType](docs/GETPaidInvoicesType.md)
 - [SwaggerClient::GETPaymentMethodType](docs/GETPaymentMethodType.md)
 - [SwaggerClient::GETPaymentMethodTypeCardHolderInfo](docs/GETPaymentMethodTypeCardHolderInfo.md)
 - [SwaggerClient::GETPaymentMethodsType](docs/GETPaymentMethodsType.md)
 - [SwaggerClient::GETPaymentType](docs/GETPaymentType.md)
 - [SwaggerClient::GETPaymentsType](docs/GETPaymentsType.md)
 - [SwaggerClient::GETProductRatePlanChargePricingTierType](docs/GETProductRatePlanChargePricingTierType.md)
 - [SwaggerClient::GETProductRatePlanChargePricingType](docs/GETProductRatePlanChargePricingType.md)
 - [SwaggerClient::GETProductRatePlanChargeType](docs/GETProductRatePlanChargeType.md)
 - [SwaggerClient::GETProductRatePlanChargeTypeFinanceInformation](docs/GETProductRatePlanChargeTypeFinanceInformation.md)
 - [SwaggerClient::GETProductRatePlanType](docs/GETProductRatePlanType.md)
 - [SwaggerClient::GETProductType](docs/GETProductType.md)
 - [SwaggerClient::GETRSDetailType](docs/GETRSDetailType.md)
 - [SwaggerClient::GETRSDetailWithoutSuccessType](docs/GETRSDetailWithoutSuccessType.md)
 - [SwaggerClient::GETRSDetailsByChargeType](docs/GETRSDetailsByChargeType.md)
 - [SwaggerClient::GETRevenueEventDetailType](docs/GETRevenueEventDetailType.md)
 - [SwaggerClient::GETRevenueEventDetailWithoutSuccessType](docs/GETRevenueEventDetailWithoutSuccessType.md)
 - [SwaggerClient::GETRevenueEventDetailsType](docs/GETRevenueEventDetailsType.md)
 - [SwaggerClient::GETRevenueItemType](docs/GETRevenueItemType.md)
 - [SwaggerClient::GETRevenueItemsType](docs/GETRevenueItemsType.md)
 - [SwaggerClient::GETRevenueRecognitionRuleAssociationType](docs/GETRevenueRecognitionRuleAssociationType.md)
 - [SwaggerClient::GETRevenueStartDateSettingType](docs/GETRevenueStartDateSettingType.md)
 - [SwaggerClient::GETRsRevenueItemType](docs/GETRsRevenueItemType.md)
 - [SwaggerClient::GETRsRevenueItemsType](docs/GETRsRevenueItemsType.md)
 - [SwaggerClient::GETSubscriptionProductFeatureType](docs/GETSubscriptionProductFeatureType.md)
 - [SwaggerClient::GETSubscriptionRatePlanChargesType](docs/GETSubscriptionRatePlanChargesType.md)
 - [SwaggerClient::GETSubscriptionRatePlanType](docs/GETSubscriptionRatePlanType.md)
 - [SwaggerClient::GETSubscriptionType](docs/GETSubscriptionType.md)
 - [SwaggerClient::GETSubscriptionTypeWithSuccess](docs/GETSubscriptionTypeWithSuccess.md)
 - [SwaggerClient::GETSubscriptionWrapper](docs/GETSubscriptionWrapper.md)
 - [SwaggerClient::GETTierType](docs/GETTierType.md)
 - [SwaggerClient::GETUsageType](docs/GETUsageType.md)
 - [SwaggerClient::GETUsageWrapper](docs/GETUsageWrapper.md)
 - [SwaggerClient::GatewayOption](docs/GatewayOption.md)
 - [SwaggerClient::GatewayOptionData](docs/GatewayOptionData.md)
 - [SwaggerClient::GetHostedPageType](docs/GetHostedPageType.md)
 - [SwaggerClient::GetHostedPagesType](docs/GetHostedPagesType.md)
 - [SwaggerClient::GetProductFeatureType](docs/GetProductFeatureType.md)
 - [SwaggerClient::Invoice](docs/Invoice.md)
 - [SwaggerClient::InvoiceData](docs/InvoiceData.md)
 - [SwaggerClient::InvoiceItem](docs/InvoiceItem.md)
 - [SwaggerClient::InvoiceProcessingOptions](docs/InvoiceProcessingOptions.md)
 - [SwaggerClient::InvoiceResult](docs/InvoiceResult.md)
 - [SwaggerClient::NewChargeMetrics](docs/NewChargeMetrics.md)
 - [SwaggerClient::POSTAccountResponseType](docs/POSTAccountResponseType.md)
 - [SwaggerClient::POSTAccountType](docs/POSTAccountType.md)
 - [SwaggerClient::POSTAccountTypeBillToContact](docs/POSTAccountTypeBillToContact.md)
 - [SwaggerClient::POSTAccountTypeCreditCard](docs/POSTAccountTypeCreditCard.md)
 - [SwaggerClient::POSTAccountTypeCreditCardCardHolderInfo](docs/POSTAccountTypeCreditCardCardHolderInfo.md)
 - [SwaggerClient::POSTAccountTypeSoldToContact](docs/POSTAccountTypeSoldToContact.md)
 - [SwaggerClient::POSTAccountTypeSubscription](docs/POSTAccountTypeSubscription.md)
 - [SwaggerClient::POSTAccountTypeTaxInfo](docs/POSTAccountTypeTaxInfo.md)
 - [SwaggerClient::POSTAccountingCodeResponseType](docs/POSTAccountingCodeResponseType.md)
 - [SwaggerClient::POSTAccountingCodeType](docs/POSTAccountingCodeType.md)
 - [SwaggerClient::POSTAccountingPeriodResponseType](docs/POSTAccountingPeriodResponseType.md)
 - [SwaggerClient::POSTAccountingPeriodType](docs/POSTAccountingPeriodType.md)
 - [SwaggerClient::POSTAttachmentResponseType](docs/POSTAttachmentResponseType.md)
 - [SwaggerClient::POSTAttachmentType](docs/POSTAttachmentType.md)
 - [SwaggerClient::POSTDecryptResponseType](docs/POSTDecryptResponseType.md)
 - [SwaggerClient::POSTDecryptionType](docs/POSTDecryptionType.md)
 - [SwaggerClient::POSTDistributionItemType](docs/POSTDistributionItemType.md)
 - [SwaggerClient::POSTHMACSignatureResponseType](docs/POSTHMACSignatureResponseType.md)
 - [SwaggerClient::POSTHMACSignatureType](docs/POSTHMACSignatureType.md)
 - [SwaggerClient::POSTInvoiceCollectInvoicesType](docs/POSTInvoiceCollectInvoicesType.md)
 - [SwaggerClient::POSTInvoiceCollectResponseType](docs/POSTInvoiceCollectResponseType.md)
 - [SwaggerClient::POSTInvoiceCollectType](docs/POSTInvoiceCollectType.md)
 - [SwaggerClient::POSTJournalEntryItemType](docs/POSTJournalEntryItemType.md)
 - [SwaggerClient::POSTJournalEntryResponseType](docs/POSTJournalEntryResponseType.md)
 - [SwaggerClient::POSTJournalEntrySegmentType](docs/POSTJournalEntrySegmentType.md)
 - [SwaggerClient::POSTJournalEntryType](docs/POSTJournalEntryType.md)
 - [SwaggerClient::POSTJournalRunResponseType](docs/POSTJournalRunResponseType.md)
 - [SwaggerClient::POSTJournalRunTransactionType](docs/POSTJournalRunTransactionType.md)
 - [SwaggerClient::POSTJournalRunType](docs/POSTJournalRunType.md)
 - [SwaggerClient::POSTMassUpdateResponseType](docs/POSTMassUpdateResponseType.md)
 - [SwaggerClient::POSTMassUpdateType](docs/POSTMassUpdateType.md)
 - [SwaggerClient::POSTMassUpdateTypeParams](docs/POSTMassUpdateTypeParams.md)
 - [SwaggerClient::POSTPaymentMethodResponseType](docs/POSTPaymentMethodResponseType.md)
 - [SwaggerClient::POSTPaymentMethodType](docs/POSTPaymentMethodType.md)
 - [SwaggerClient::POSTPaymentMethodTypeCardHolderInfo](docs/POSTPaymentMethodTypeCardHolderInfo.md)
 - [SwaggerClient::POSTQuoteDocResponseType](docs/POSTQuoteDocResponseType.md)
 - [SwaggerClient::POSTQuoteDocType](docs/POSTQuoteDocType.md)
 - [SwaggerClient::POSTRSASignatureResponseType](docs/POSTRSASignatureResponseType.md)
 - [SwaggerClient::POSTRSASignatureType](docs/POSTRSASignatureType.md)
 - [SwaggerClient::POSTRevenueScheduleByChargeResponseType](docs/POSTRevenueScheduleByChargeResponseType.md)
 - [SwaggerClient::POSTRevenueScheduleByChargeType](docs/POSTRevenueScheduleByChargeType.md)
 - [SwaggerClient::POSTRevenueScheduleByChargeTypeRevenueEvent](docs/POSTRevenueScheduleByChargeTypeRevenueEvent.md)
 - [SwaggerClient::POSTRevenueScheduleByDateRangeType](docs/POSTRevenueScheduleByDateRangeType.md)
 - [SwaggerClient::POSTRevenueScheduleByDateRangeTypeRevenueEvent](docs/POSTRevenueScheduleByDateRangeTypeRevenueEvent.md)
 - [SwaggerClient::POSTRevenueScheduleByTransactionResponseType](docs/POSTRevenueScheduleByTransactionResponseType.md)
 - [SwaggerClient::POSTRevenueScheduleByTransactionType](docs/POSTRevenueScheduleByTransactionType.md)
 - [SwaggerClient::POSTRevenueScheduleByTransactionTypeRevenueEvent](docs/POSTRevenueScheduleByTransactionTypeRevenueEvent.md)
 - [SwaggerClient::POSTScCreateType](docs/POSTScCreateType.md)
 - [SwaggerClient::POSTSrpCreateType](docs/POSTSrpCreateType.md)
 - [SwaggerClient::POSTSubscriptionCancellationResponseType](docs/POSTSubscriptionCancellationResponseType.md)
 - [SwaggerClient::POSTSubscriptionCancellationType](docs/POSTSubscriptionCancellationType.md)
 - [SwaggerClient::POSTSubscriptionPreviewInvoiceItemsType](docs/POSTSubscriptionPreviewInvoiceItemsType.md)
 - [SwaggerClient::POSTSubscriptionPreviewResponseType](docs/POSTSubscriptionPreviewResponseType.md)
 - [SwaggerClient::POSTSubscriptionPreviewResponseTypeChargeMetrics](docs/POSTSubscriptionPreviewResponseTypeChargeMetrics.md)
 - [SwaggerClient::POSTSubscriptionPreviewType](docs/POSTSubscriptionPreviewType.md)
 - [SwaggerClient::POSTSubscriptionPreviewTypePreviewAccountInfo](docs/POSTSubscriptionPreviewTypePreviewAccountInfo.md)
 - [SwaggerClient::POSTSubscriptionPreviewTypePreviewAccountInfoBillToContact](docs/POSTSubscriptionPreviewTypePreviewAccountInfoBillToContact.md)
 - [SwaggerClient::POSTSubscriptionResponseType](docs/POSTSubscriptionResponseType.md)
 - [SwaggerClient::POSTSubscriptionType](docs/POSTSubscriptionType.md)
 - [SwaggerClient::POSTTierType](docs/POSTTierType.md)
 - [SwaggerClient::POSTUsageResponseType](docs/POSTUsageResponseType.md)
 - [SwaggerClient::PUTAccountType](docs/PUTAccountType.md)
 - [SwaggerClient::PUTAccountTypeBillToContact](docs/PUTAccountTypeBillToContact.md)
 - [SwaggerClient::PUTAccountTypeSoldToContact](docs/PUTAccountTypeSoldToContact.md)
 - [SwaggerClient::PUTAccountingCodeType](docs/PUTAccountingCodeType.md)
 - [SwaggerClient::PUTAccountingPeriodType](docs/PUTAccountingPeriodType.md)
 - [SwaggerClient::PUTAllocateManuallyType](docs/PUTAllocateManuallyType.md)
 - [SwaggerClient::PUTAttachmentType](docs/PUTAttachmentType.md)
 - [SwaggerClient::PUTBasicSummaryJournalEntryType](docs/PUTBasicSummaryJournalEntryType.md)
 - [SwaggerClient::PUTEventRIDetailType](docs/PUTEventRIDetailType.md)
 - [SwaggerClient::PUTJournalEntryItemType](docs/PUTJournalEntryItemType.md)
 - [SwaggerClient::PUTPaymentMethodResponseType](docs/PUTPaymentMethodResponseType.md)
 - [SwaggerClient::PUTPaymentMethodType](docs/PUTPaymentMethodType.md)
 - [SwaggerClient::PUTRSBasicInfoType](docs/PUTRSBasicInfoType.md)
 - [SwaggerClient::PUTRSTermType](docs/PUTRSTermType.md)
 - [SwaggerClient::PUTRenewSubscriptionResponseType](docs/PUTRenewSubscriptionResponseType.md)
 - [SwaggerClient::PUTRenewSubscriptionType](docs/PUTRenewSubscriptionType.md)
 - [SwaggerClient::PUTRevenueScheduleResponseType](docs/PUTRevenueScheduleResponseType.md)
 - [SwaggerClient::PUTScAddType](docs/PUTScAddType.md)
 - [SwaggerClient::PUTScUpdateType](docs/PUTScUpdateType.md)
 - [SwaggerClient::PUTScheduleRIDetailType](docs/PUTScheduleRIDetailType.md)
 - [SwaggerClient::PUTSpecificDateAllocationType](docs/PUTSpecificDateAllocationType.md)
 - [SwaggerClient::PUTSrpAddType](docs/PUTSrpAddType.md)
 - [SwaggerClient::PUTSrpRemoveType](docs/PUTSrpRemoveType.md)
 - [SwaggerClient::PUTSrpUpdateType](docs/PUTSrpUpdateType.md)
 - [SwaggerClient::PUTSubscriptionPreviewInvoiceItemsType](docs/PUTSubscriptionPreviewInvoiceItemsType.md)
 - [SwaggerClient::PUTSubscriptionResponseType](docs/PUTSubscriptionResponseType.md)
 - [SwaggerClient::PUTSubscriptionResponseTypeChargeMetrics](docs/PUTSubscriptionResponseTypeChargeMetrics.md)
 - [SwaggerClient::PUTSubscriptionResumeResponseType](docs/PUTSubscriptionResumeResponseType.md)
 - [SwaggerClient::PUTSubscriptionResumeType](docs/PUTSubscriptionResumeType.md)
 - [SwaggerClient::PUTSubscriptionSuspendResponseType](docs/PUTSubscriptionSuspendResponseType.md)
 - [SwaggerClient::PUTSubscriptionSuspendType](docs/PUTSubscriptionSuspendType.md)
 - [SwaggerClient::PUTSubscriptionType](docs/PUTSubscriptionType.md)
 - [SwaggerClient::PaymentMethod](docs/PaymentMethod.md)
 - [SwaggerClient::PreviewOptions](docs/PreviewOptions.md)
 - [SwaggerClient::ProxyActionamendRequest](docs/ProxyActionamendRequest.md)
 - [SwaggerClient::ProxyActionamendResponse](docs/ProxyActionamendResponse.md)
 - [SwaggerClient::ProxyActioncreateRequest](docs/ProxyActioncreateRequest.md)
 - [SwaggerClient::ProxyActioncreateResponse](docs/ProxyActioncreateResponse.md)
 - [SwaggerClient::ProxyActiondeleteRequest](docs/ProxyActiondeleteRequest.md)
 - [SwaggerClient::ProxyActiondeleteResponse](docs/ProxyActiondeleteResponse.md)
 - [SwaggerClient::ProxyActionexecuteRequest](docs/ProxyActionexecuteRequest.md)
 - [SwaggerClient::ProxyActionexecuteResponse](docs/ProxyActionexecuteResponse.md)
 - [SwaggerClient::ProxyActiongenerateRequest](docs/ProxyActiongenerateRequest.md)
 - [SwaggerClient::ProxyActiongenerateResponse](docs/ProxyActiongenerateResponse.md)
 - [SwaggerClient::ProxyActionqueryMoreRequest](docs/ProxyActionqueryMoreRequest.md)
 - [SwaggerClient::ProxyActionqueryMoreResponse](docs/ProxyActionqueryMoreResponse.md)
 - [SwaggerClient::ProxyActionqueryRequest](docs/ProxyActionqueryRequest.md)
 - [SwaggerClient::ProxyActionqueryResponse](docs/ProxyActionqueryResponse.md)
 - [SwaggerClient::ProxyActionsubscribeRequest](docs/ProxyActionsubscribeRequest.md)
 - [SwaggerClient::ProxyActionsubscribeResponse](docs/ProxyActionsubscribeResponse.md)
 - [SwaggerClient::ProxyActionupdateRequest](docs/ProxyActionupdateRequest.md)
 - [SwaggerClient::ProxyActionupdateResponse](docs/ProxyActionupdateResponse.md)
 - [SwaggerClient::ProxyBadRequestResponse](docs/ProxyBadRequestResponse.md)
 - [SwaggerClient::ProxyBadRequestResponseErrors](docs/ProxyBadRequestResponseErrors.md)
 - [SwaggerClient::ProxyCreateAccount](docs/ProxyCreateAccount.md)
 - [SwaggerClient::ProxyCreateAccountingCode](docs/ProxyCreateAccountingCode.md)
 - [SwaggerClient::ProxyCreateAmendment](docs/ProxyCreateAmendment.md)
 - [SwaggerClient::ProxyCreateContact](docs/ProxyCreateContact.md)
 - [SwaggerClient::ProxyCreateExport](docs/ProxyCreateExport.md)
 - [SwaggerClient::ProxyCreateInvoice](docs/ProxyCreateInvoice.md)
 - [SwaggerClient::ProxyCreateInvoiceAdjustment](docs/ProxyCreateInvoiceAdjustment.md)
 - [SwaggerClient::ProxyCreateInvoicePayment](docs/ProxyCreateInvoicePayment.md)
 - [SwaggerClient::ProxyCreateOrModifyResponse](docs/ProxyCreateOrModifyResponse.md)
 - [SwaggerClient::ProxyCreatePayment](docs/ProxyCreatePayment.md)
 - [SwaggerClient::ProxyCreatePaymentMethod](docs/ProxyCreatePaymentMethod.md)
 - [SwaggerClient::ProxyCreateProduct](docs/ProxyCreateProduct.md)
 - [SwaggerClient::ProxyCreateProductRatePlan](docs/ProxyCreateProductRatePlan.md)
 - [SwaggerClient::ProxyCreateRefund](docs/ProxyCreateRefund.md)
 - [SwaggerClient::ProxyCreateSubscription](docs/ProxyCreateSubscription.md)
 - [SwaggerClient::ProxyCreateTaxationItem](docs/ProxyCreateTaxationItem.md)
 - [SwaggerClient::ProxyCreateUnitOfMeasure](docs/ProxyCreateUnitOfMeasure.md)
 - [SwaggerClient::ProxyCreateUsage](docs/ProxyCreateUsage.md)
 - [SwaggerClient::ProxyDeleteResponse](docs/ProxyDeleteResponse.md)
 - [SwaggerClient::ProxyGetAccount](docs/ProxyGetAccount.md)
 - [SwaggerClient::ProxyGetAccountingCode](docs/ProxyGetAccountingCode.md)
 - [SwaggerClient::ProxyGetAccountingPeriod](docs/ProxyGetAccountingPeriod.md)
 - [SwaggerClient::ProxyGetAmendment](docs/ProxyGetAmendment.md)
 - [SwaggerClient::ProxyGetCommunicationProfile](docs/ProxyGetCommunicationProfile.md)
 - [SwaggerClient::ProxyGetContact](docs/ProxyGetContact.md)
 - [SwaggerClient::ProxyGetCreditBalanceAdjustment](docs/ProxyGetCreditBalanceAdjustment.md)
 - [SwaggerClient::ProxyGetExport](docs/ProxyGetExport.md)
 - [SwaggerClient::ProxyGetFeature](docs/ProxyGetFeature.md)
 - [SwaggerClient::ProxyGetImport](docs/ProxyGetImport.md)
 - [SwaggerClient::ProxyGetInvoice](docs/ProxyGetInvoice.md)
 - [SwaggerClient::ProxyGetInvoiceAdjustment](docs/ProxyGetInvoiceAdjustment.md)
 - [SwaggerClient::ProxyGetInvoiceItem](docs/ProxyGetInvoiceItem.md)
 - [SwaggerClient::ProxyGetInvoiceItemAdjustment](docs/ProxyGetInvoiceItemAdjustment.md)
 - [SwaggerClient::ProxyGetInvoicePayment](docs/ProxyGetInvoicePayment.md)
 - [SwaggerClient::ProxyGetInvoiceSplit](docs/ProxyGetInvoiceSplit.md)
 - [SwaggerClient::ProxyGetInvoiceSplitItem](docs/ProxyGetInvoiceSplitItem.md)
 - [SwaggerClient::ProxyGetPayment](docs/ProxyGetPayment.md)
 - [SwaggerClient::ProxyGetPaymentMethod](docs/ProxyGetPaymentMethod.md)
 - [SwaggerClient::ProxyGetPaymentMethodSnapshot](docs/ProxyGetPaymentMethodSnapshot.md)
 - [SwaggerClient::ProxyGetPaymentMethodTransactionLog](docs/ProxyGetPaymentMethodTransactionLog.md)
 - [SwaggerClient::ProxyGetPaymentTransactionLog](docs/ProxyGetPaymentTransactionLog.md)
 - [SwaggerClient::ProxyGetProduct](docs/ProxyGetProduct.md)
 - [SwaggerClient::ProxyGetProductFeature](docs/ProxyGetProductFeature.md)
 - [SwaggerClient::ProxyGetProductRatePlan](docs/ProxyGetProductRatePlan.md)
 - [SwaggerClient::ProxyGetProductRatePlanCharge](docs/ProxyGetProductRatePlanCharge.md)
 - [SwaggerClient::ProxyGetProductRatePlanChargeTier](docs/ProxyGetProductRatePlanChargeTier.md)
 - [SwaggerClient::ProxyGetRatePlan](docs/ProxyGetRatePlan.md)
 - [SwaggerClient::ProxyGetRatePlanCharge](docs/ProxyGetRatePlanCharge.md)
 - [SwaggerClient::ProxyGetRatePlanChargeTier](docs/ProxyGetRatePlanChargeTier.md)
 - [SwaggerClient::ProxyGetRefund](docs/ProxyGetRefund.md)
 - [SwaggerClient::ProxyGetRefundInvoicePayment](docs/ProxyGetRefundInvoicePayment.md)
 - [SwaggerClient::ProxyGetRefundTransactionLog](docs/ProxyGetRefundTransactionLog.md)
 - [SwaggerClient::ProxyGetSubscription](docs/ProxyGetSubscription.md)
 - [SwaggerClient::ProxyGetSubscriptionProductFeature](docs/ProxyGetSubscriptionProductFeature.md)
 - [SwaggerClient::ProxyGetTaxationItem](docs/ProxyGetTaxationItem.md)
 - [SwaggerClient::ProxyGetUnitOfMeasure](docs/ProxyGetUnitOfMeasure.md)
 - [SwaggerClient::ProxyGetUsage](docs/ProxyGetUsage.md)
 - [SwaggerClient::ProxyModifyAccount](docs/ProxyModifyAccount.md)
 - [SwaggerClient::ProxyModifyAccountingCode](docs/ProxyModifyAccountingCode.md)
 - [SwaggerClient::ProxyModifyAmendment](docs/ProxyModifyAmendment.md)
 - [SwaggerClient::ProxyModifyContact](docs/ProxyModifyContact.md)
 - [SwaggerClient::ProxyModifyInvoice](docs/ProxyModifyInvoice.md)
 - [SwaggerClient::ProxyModifyInvoiceAdjustment](docs/ProxyModifyInvoiceAdjustment.md)
 - [SwaggerClient::ProxyModifyInvoicePayment](docs/ProxyModifyInvoicePayment.md)
 - [SwaggerClient::ProxyModifyPayment](docs/ProxyModifyPayment.md)
 - [SwaggerClient::ProxyModifyPaymentMethod](docs/ProxyModifyPaymentMethod.md)
 - [SwaggerClient::ProxyModifyProduct](docs/ProxyModifyProduct.md)
 - [SwaggerClient::ProxyModifyProductRatePlan](docs/ProxyModifyProductRatePlan.md)
 - [SwaggerClient::ProxyModifyRefund](docs/ProxyModifyRefund.md)
 - [SwaggerClient::ProxyModifySubscription](docs/ProxyModifySubscription.md)
 - [SwaggerClient::ProxyModifyTaxationItem](docs/ProxyModifyTaxationItem.md)
 - [SwaggerClient::ProxyModifyUnitOfMeasure](docs/ProxyModifyUnitOfMeasure.md)
 - [SwaggerClient::ProxyModifyUsage](docs/ProxyModifyUsage.md)
 - [SwaggerClient::ProxyNoDataResponse](docs/ProxyNoDataResponse.md)
 - [SwaggerClient::QueryResult](docs/QueryResult.md)
 - [SwaggerClient::RatePlan](docs/RatePlan.md)
 - [SwaggerClient::RatePlanCharge](docs/RatePlanCharge.md)
 - [SwaggerClient::RatePlanChargeData](docs/RatePlanChargeData.md)
 - [SwaggerClient::RatePlanChargeTier](docs/RatePlanChargeTier.md)
 - [SwaggerClient::RatePlanData](docs/RatePlanData.md)
 - [SwaggerClient::RevenueScheduleItemType](docs/RevenueScheduleItemType.md)
 - [SwaggerClient::SaveResult](docs/SaveResult.md)
 - [SwaggerClient::SubscribeInvoiceProcessingOptions](docs/SubscribeInvoiceProcessingOptions.md)
 - [SwaggerClient::SubscribeOptions](docs/SubscribeOptions.md)
 - [SwaggerClient::SubscribeRequest](docs/SubscribeRequest.md)
 - [SwaggerClient::SubscribeResult](docs/SubscribeResult.md)
 - [SwaggerClient::Subscription](docs/Subscription.md)
 - [SwaggerClient::SubscriptionData](docs/SubscriptionData.md)
 - [SwaggerClient::SubscriptionProductFeature](docs/SubscriptionProductFeature.md)
 - [SwaggerClient::SubscriptionProductFeatureList](docs/SubscriptionProductFeatureList.md)
 - [SwaggerClient::ZObject](docs/ZObject.md)
 - [SwaggerClient::ZObjectUpdate](docs/ZObjectUpdate.md)


## Documentation for Authorization

 All endpoints do not require authorization.

