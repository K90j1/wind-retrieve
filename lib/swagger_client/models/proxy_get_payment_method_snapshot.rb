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

require 'date'

module SwaggerClient

  class ProxyGetPaymentMethodSnapshot
    # 
    attr_accessor :account_id

    # 
    attr_accessor :ach_aba_code

    # 
    attr_accessor :ach_account_name

    # 
    attr_accessor :ach_account_number_mask

    # 
    attr_accessor :ach_account_type

    # 
    attr_accessor :ach_bank_name

    # 
    attr_accessor :bank_branch_code

    # 
    attr_accessor :bank_check_digit

    # 
    attr_accessor :bank_city

    # 
    attr_accessor :bank_code

    # 
    attr_accessor :bank_identification_number

    # 
    attr_accessor :bank_name

    # 
    attr_accessor :bank_postal_code

    # 
    attr_accessor :bank_street_name

    # 
    attr_accessor :bank_street_number

    # 
    attr_accessor :bank_transfer_account_name

    # 
    attr_accessor :bank_transfer_account_number_mask

    # 
    attr_accessor :bank_transfer_account_type

    # 
    attr_accessor :bank_transfer_type

    # 
    attr_accessor :business_identification_code

    # 
    attr_accessor :city

    # 
    attr_accessor :country

    # 
    attr_accessor :credit_card_address1

    # 
    attr_accessor :credit_card_address2

    # 
    attr_accessor :credit_card_city

    # 
    attr_accessor :credit_card_country

    # 
    attr_accessor :credit_card_expiration_month

    # 
    attr_accessor :credit_card_expiration_year

    # 
    attr_accessor :credit_card_holder_name

    # 
    attr_accessor :credit_card_mask_number

    # 
    attr_accessor :credit_card_postal_code

    # 
    attr_accessor :credit_card_state

    # 
    attr_accessor :credit_card_type

    # 
    attr_accessor :device_session_id

    # 
    attr_accessor :email

    # 
    attr_accessor :existing_mandate

    # 
    attr_accessor :first_name

    # 
    attr_accessor :iban

    # 
    attr_accessor :ip_address

    # Object identifier.
    attr_accessor :id

    # 
    attr_accessor :last_failed_sale_transaction_date

    # 
    attr_accessor :last_name

    # 
    attr_accessor :last_transaction_date_time

    # 
    attr_accessor :last_transaction_status

    # 
    attr_accessor :mandate_creation_date

    # 
    attr_accessor :mandate_id

    # 
    attr_accessor :mandate_received

    # 
    attr_accessor :mandate_update_date

    # 
    attr_accessor :max_consecutive_payment_failures

    # 
    attr_accessor :name

    # 
    attr_accessor :num_consecutive_failures

    # 
    attr_accessor :payment_method_id

    # 
    attr_accessor :payment_method_status

    # 
    attr_accessor :payment_retry_window

    # 
    attr_accessor :paypal_baid

    # 
    attr_accessor :paypal_email

    # 
    attr_accessor :paypal_preapproval_key

    # 
    attr_accessor :paypal_type

    # 
    attr_accessor :phone

    # 
    attr_accessor :postal_code

    # 
    attr_accessor :second_token_id

    # 
    attr_accessor :state

    # 
    attr_accessor :street_name

    # 
    attr_accessor :street_number

    # 
    attr_accessor :token_id

    # 
    attr_accessor :total_number_of_error_payments

    # 
    attr_accessor :total_number_of_processed_payments

    # 
    attr_accessor :type

    # 
    attr_accessor :use_default_retry_rule


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'AccountId',
        :'ach_aba_code' => :'AchAbaCode',
        :'ach_account_name' => :'AchAccountName',
        :'ach_account_number_mask' => :'AchAccountNumberMask',
        :'ach_account_type' => :'AchAccountType',
        :'ach_bank_name' => :'AchBankName',
        :'bank_branch_code' => :'BankBranchCode',
        :'bank_check_digit' => :'BankCheckDigit',
        :'bank_city' => :'BankCity',
        :'bank_code' => :'BankCode',
        :'bank_identification_number' => :'BankIdentificationNumber',
        :'bank_name' => :'BankName',
        :'bank_postal_code' => :'BankPostalCode',
        :'bank_street_name' => :'BankStreetName',
        :'bank_street_number' => :'BankStreetNumber',
        :'bank_transfer_account_name' => :'BankTransferAccountName',
        :'bank_transfer_account_number_mask' => :'BankTransferAccountNumberMask',
        :'bank_transfer_account_type' => :'BankTransferAccountType',
        :'bank_transfer_type' => :'BankTransferType',
        :'business_identification_code' => :'BusinessIdentificationCode',
        :'city' => :'City',
        :'country' => :'Country',
        :'credit_card_address1' => :'CreditCardAddress1',
        :'credit_card_address2' => :'CreditCardAddress2',
        :'credit_card_city' => :'CreditCardCity',
        :'credit_card_country' => :'CreditCardCountry',
        :'credit_card_expiration_month' => :'CreditCardExpirationMonth',
        :'credit_card_expiration_year' => :'CreditCardExpirationYear',
        :'credit_card_holder_name' => :'CreditCardHolderName',
        :'credit_card_mask_number' => :'CreditCardMaskNumber',
        :'credit_card_postal_code' => :'CreditCardPostalCode',
        :'credit_card_state' => :'CreditCardState',
        :'credit_card_type' => :'CreditCardType',
        :'device_session_id' => :'DeviceSessionId',
        :'email' => :'Email',
        :'existing_mandate' => :'ExistingMandate',
        :'first_name' => :'FirstName',
        :'iban' => :'IBAN',
        :'ip_address' => :'IPAddress',
        :'id' => :'Id',
        :'last_failed_sale_transaction_date' => :'LastFailedSaleTransactionDate',
        :'last_name' => :'LastName',
        :'last_transaction_date_time' => :'LastTransactionDateTime',
        :'last_transaction_status' => :'LastTransactionStatus',
        :'mandate_creation_date' => :'MandateCreationDate',
        :'mandate_id' => :'MandateID',
        :'mandate_received' => :'MandateReceived',
        :'mandate_update_date' => :'MandateUpdateDate',
        :'max_consecutive_payment_failures' => :'MaxConsecutivePaymentFailures',
        :'name' => :'Name',
        :'num_consecutive_failures' => :'NumConsecutiveFailures',
        :'payment_method_id' => :'PaymentMethodId',
        :'payment_method_status' => :'PaymentMethodStatus',
        :'payment_retry_window' => :'PaymentRetryWindow',
        :'paypal_baid' => :'PaypalBaid',
        :'paypal_email' => :'PaypalEmail',
        :'paypal_preapproval_key' => :'PaypalPreapprovalKey',
        :'paypal_type' => :'PaypalType',
        :'phone' => :'Phone',
        :'postal_code' => :'PostalCode',
        :'second_token_id' => :'SecondTokenId',
        :'state' => :'State',
        :'street_name' => :'StreetName',
        :'street_number' => :'StreetNumber',
        :'token_id' => :'TokenId',
        :'total_number_of_error_payments' => :'TotalNumberOfErrorPayments',
        :'total_number_of_processed_payments' => :'TotalNumberOfProcessedPayments',
        :'type' => :'Type',
        :'use_default_retry_rule' => :'UseDefaultRetryRule'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'ach_aba_code' => :'String',
        :'ach_account_name' => :'String',
        :'ach_account_number_mask' => :'String',
        :'ach_account_type' => :'String',
        :'ach_bank_name' => :'String',
        :'bank_branch_code' => :'String',
        :'bank_check_digit' => :'String',
        :'bank_city' => :'String',
        :'bank_code' => :'String',
        :'bank_identification_number' => :'String',
        :'bank_name' => :'String',
        :'bank_postal_code' => :'String',
        :'bank_street_name' => :'String',
        :'bank_street_number' => :'String',
        :'bank_transfer_account_name' => :'String',
        :'bank_transfer_account_number_mask' => :'String',
        :'bank_transfer_account_type' => :'String',
        :'bank_transfer_type' => :'String',
        :'business_identification_code' => :'String',
        :'city' => :'String',
        :'country' => :'String',
        :'credit_card_address1' => :'String',
        :'credit_card_address2' => :'String',
        :'credit_card_city' => :'String',
        :'credit_card_country' => :'String',
        :'credit_card_expiration_month' => :'Integer',
        :'credit_card_expiration_year' => :'Integer',
        :'credit_card_holder_name' => :'String',
        :'credit_card_mask_number' => :'String',
        :'credit_card_postal_code' => :'String',
        :'credit_card_state' => :'String',
        :'credit_card_type' => :'String',
        :'device_session_id' => :'String',
        :'email' => :'String',
        :'existing_mandate' => :'String',
        :'first_name' => :'String',
        :'iban' => :'String',
        :'ip_address' => :'String',
        :'id' => :'String',
        :'last_failed_sale_transaction_date' => :'DateTime',
        :'last_name' => :'String',
        :'last_transaction_date_time' => :'DateTime',
        :'last_transaction_status' => :'String',
        :'mandate_creation_date' => :'Date',
        :'mandate_id' => :'String',
        :'mandate_received' => :'String',
        :'mandate_update_date' => :'Date',
        :'max_consecutive_payment_failures' => :'Integer',
        :'name' => :'String',
        :'num_consecutive_failures' => :'Integer',
        :'payment_method_id' => :'String',
        :'payment_method_status' => :'String',
        :'payment_retry_window' => :'Integer',
        :'paypal_baid' => :'String',
        :'paypal_email' => :'String',
        :'paypal_preapproval_key' => :'String',
        :'paypal_type' => :'String',
        :'phone' => :'String',
        :'postal_code' => :'String',
        :'second_token_id' => :'String',
        :'state' => :'String',
        :'street_name' => :'String',
        :'street_number' => :'String',
        :'token_id' => :'String',
        :'total_number_of_error_payments' => :'Integer',
        :'total_number_of_processed_payments' => :'Integer',
        :'type' => :'String',
        :'use_default_retry_rule' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AccountId')
        self.account_id = attributes[:'AccountId']
      end

      if attributes.has_key?(:'AchAbaCode')
        self.ach_aba_code = attributes[:'AchAbaCode']
      end

      if attributes.has_key?(:'AchAccountName')
        self.ach_account_name = attributes[:'AchAccountName']
      end

      if attributes.has_key?(:'AchAccountNumberMask')
        self.ach_account_number_mask = attributes[:'AchAccountNumberMask']
      end

      if attributes.has_key?(:'AchAccountType')
        self.ach_account_type = attributes[:'AchAccountType']
      end

      if attributes.has_key?(:'AchBankName')
        self.ach_bank_name = attributes[:'AchBankName']
      end

      if attributes.has_key?(:'BankBranchCode')
        self.bank_branch_code = attributes[:'BankBranchCode']
      end

      if attributes.has_key?(:'BankCheckDigit')
        self.bank_check_digit = attributes[:'BankCheckDigit']
      end

      if attributes.has_key?(:'BankCity')
        self.bank_city = attributes[:'BankCity']
      end

      if attributes.has_key?(:'BankCode')
        self.bank_code = attributes[:'BankCode']
      end

      if attributes.has_key?(:'BankIdentificationNumber')
        self.bank_identification_number = attributes[:'BankIdentificationNumber']
      end

      if attributes.has_key?(:'BankName')
        self.bank_name = attributes[:'BankName']
      end

      if attributes.has_key?(:'BankPostalCode')
        self.bank_postal_code = attributes[:'BankPostalCode']
      end

      if attributes.has_key?(:'BankStreetName')
        self.bank_street_name = attributes[:'BankStreetName']
      end

      if attributes.has_key?(:'BankStreetNumber')
        self.bank_street_number = attributes[:'BankStreetNumber']
      end

      if attributes.has_key?(:'BankTransferAccountName')
        self.bank_transfer_account_name = attributes[:'BankTransferAccountName']
      end

      if attributes.has_key?(:'BankTransferAccountNumberMask')
        self.bank_transfer_account_number_mask = attributes[:'BankTransferAccountNumberMask']
      end

      if attributes.has_key?(:'BankTransferAccountType')
        self.bank_transfer_account_type = attributes[:'BankTransferAccountType']
      end

      if attributes.has_key?(:'BankTransferType')
        self.bank_transfer_type = attributes[:'BankTransferType']
      end

      if attributes.has_key?(:'BusinessIdentificationCode')
        self.business_identification_code = attributes[:'BusinessIdentificationCode']
      end

      if attributes.has_key?(:'City')
        self.city = attributes[:'City']
      end

      if attributes.has_key?(:'Country')
        self.country = attributes[:'Country']
      end

      if attributes.has_key?(:'CreditCardAddress1')
        self.credit_card_address1 = attributes[:'CreditCardAddress1']
      end

      if attributes.has_key?(:'CreditCardAddress2')
        self.credit_card_address2 = attributes[:'CreditCardAddress2']
      end

      if attributes.has_key?(:'CreditCardCity')
        self.credit_card_city = attributes[:'CreditCardCity']
      end

      if attributes.has_key?(:'CreditCardCountry')
        self.credit_card_country = attributes[:'CreditCardCountry']
      end

      if attributes.has_key?(:'CreditCardExpirationMonth')
        self.credit_card_expiration_month = attributes[:'CreditCardExpirationMonth']
      end

      if attributes.has_key?(:'CreditCardExpirationYear')
        self.credit_card_expiration_year = attributes[:'CreditCardExpirationYear']
      end

      if attributes.has_key?(:'CreditCardHolderName')
        self.credit_card_holder_name = attributes[:'CreditCardHolderName']
      end

      if attributes.has_key?(:'CreditCardMaskNumber')
        self.credit_card_mask_number = attributes[:'CreditCardMaskNumber']
      end

      if attributes.has_key?(:'CreditCardPostalCode')
        self.credit_card_postal_code = attributes[:'CreditCardPostalCode']
      end

      if attributes.has_key?(:'CreditCardState')
        self.credit_card_state = attributes[:'CreditCardState']
      end

      if attributes.has_key?(:'CreditCardType')
        self.credit_card_type = attributes[:'CreditCardType']
      end

      if attributes.has_key?(:'DeviceSessionId')
        self.device_session_id = attributes[:'DeviceSessionId']
      end

      if attributes.has_key?(:'Email')
        self.email = attributes[:'Email']
      end

      if attributes.has_key?(:'ExistingMandate')
        self.existing_mandate = attributes[:'ExistingMandate']
      end

      if attributes.has_key?(:'FirstName')
        self.first_name = attributes[:'FirstName']
      end

      if attributes.has_key?(:'IBAN')
        self.iban = attributes[:'IBAN']
      end

      if attributes.has_key?(:'IPAddress')
        self.ip_address = attributes[:'IPAddress']
      end

      if attributes.has_key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.has_key?(:'LastFailedSaleTransactionDate')
        self.last_failed_sale_transaction_date = attributes[:'LastFailedSaleTransactionDate']
      end

      if attributes.has_key?(:'LastName')
        self.last_name = attributes[:'LastName']
      end

      if attributes.has_key?(:'LastTransactionDateTime')
        self.last_transaction_date_time = attributes[:'LastTransactionDateTime']
      end

      if attributes.has_key?(:'LastTransactionStatus')
        self.last_transaction_status = attributes[:'LastTransactionStatus']
      end

      if attributes.has_key?(:'MandateCreationDate')
        self.mandate_creation_date = attributes[:'MandateCreationDate']
      end

      if attributes.has_key?(:'MandateID')
        self.mandate_id = attributes[:'MandateID']
      end

      if attributes.has_key?(:'MandateReceived')
        self.mandate_received = attributes[:'MandateReceived']
      end

      if attributes.has_key?(:'MandateUpdateDate')
        self.mandate_update_date = attributes[:'MandateUpdateDate']
      end

      if attributes.has_key?(:'MaxConsecutivePaymentFailures')
        self.max_consecutive_payment_failures = attributes[:'MaxConsecutivePaymentFailures']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'NumConsecutiveFailures')
        self.num_consecutive_failures = attributes[:'NumConsecutiveFailures']
      end

      if attributes.has_key?(:'PaymentMethodId')
        self.payment_method_id = attributes[:'PaymentMethodId']
      end

      if attributes.has_key?(:'PaymentMethodStatus')
        self.payment_method_status = attributes[:'PaymentMethodStatus']
      end

      if attributes.has_key?(:'PaymentRetryWindow')
        self.payment_retry_window = attributes[:'PaymentRetryWindow']
      end

      if attributes.has_key?(:'PaypalBaid')
        self.paypal_baid = attributes[:'PaypalBaid']
      end

      if attributes.has_key?(:'PaypalEmail')
        self.paypal_email = attributes[:'PaypalEmail']
      end

      if attributes.has_key?(:'PaypalPreapprovalKey')
        self.paypal_preapproval_key = attributes[:'PaypalPreapprovalKey']
      end

      if attributes.has_key?(:'PaypalType')
        self.paypal_type = attributes[:'PaypalType']
      end

      if attributes.has_key?(:'Phone')
        self.phone = attributes[:'Phone']
      end

      if attributes.has_key?(:'PostalCode')
        self.postal_code = attributes[:'PostalCode']
      end

      if attributes.has_key?(:'SecondTokenId')
        self.second_token_id = attributes[:'SecondTokenId']
      end

      if attributes.has_key?(:'State')
        self.state = attributes[:'State']
      end

      if attributes.has_key?(:'StreetName')
        self.street_name = attributes[:'StreetName']
      end

      if attributes.has_key?(:'StreetNumber')
        self.street_number = attributes[:'StreetNumber']
      end

      if attributes.has_key?(:'TokenId')
        self.token_id = attributes[:'TokenId']
      end

      if attributes.has_key?(:'TotalNumberOfErrorPayments')
        self.total_number_of_error_payments = attributes[:'TotalNumberOfErrorPayments']
      end

      if attributes.has_key?(:'TotalNumberOfProcessedPayments')
        self.total_number_of_processed_payments = attributes[:'TotalNumberOfProcessedPayments']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'UseDefaultRetryRule')
        self.use_default_retry_rule = attributes[:'UseDefaultRetryRule']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          ach_aba_code == o.ach_aba_code &&
          ach_account_name == o.ach_account_name &&
          ach_account_number_mask == o.ach_account_number_mask &&
          ach_account_type == o.ach_account_type &&
          ach_bank_name == o.ach_bank_name &&
          bank_branch_code == o.bank_branch_code &&
          bank_check_digit == o.bank_check_digit &&
          bank_city == o.bank_city &&
          bank_code == o.bank_code &&
          bank_identification_number == o.bank_identification_number &&
          bank_name == o.bank_name &&
          bank_postal_code == o.bank_postal_code &&
          bank_street_name == o.bank_street_name &&
          bank_street_number == o.bank_street_number &&
          bank_transfer_account_name == o.bank_transfer_account_name &&
          bank_transfer_account_number_mask == o.bank_transfer_account_number_mask &&
          bank_transfer_account_type == o.bank_transfer_account_type &&
          bank_transfer_type == o.bank_transfer_type &&
          business_identification_code == o.business_identification_code &&
          city == o.city &&
          country == o.country &&
          credit_card_address1 == o.credit_card_address1 &&
          credit_card_address2 == o.credit_card_address2 &&
          credit_card_city == o.credit_card_city &&
          credit_card_country == o.credit_card_country &&
          credit_card_expiration_month == o.credit_card_expiration_month &&
          credit_card_expiration_year == o.credit_card_expiration_year &&
          credit_card_holder_name == o.credit_card_holder_name &&
          credit_card_mask_number == o.credit_card_mask_number &&
          credit_card_postal_code == o.credit_card_postal_code &&
          credit_card_state == o.credit_card_state &&
          credit_card_type == o.credit_card_type &&
          device_session_id == o.device_session_id &&
          email == o.email &&
          existing_mandate == o.existing_mandate &&
          first_name == o.first_name &&
          iban == o.iban &&
          ip_address == o.ip_address &&
          id == o.id &&
          last_failed_sale_transaction_date == o.last_failed_sale_transaction_date &&
          last_name == o.last_name &&
          last_transaction_date_time == o.last_transaction_date_time &&
          last_transaction_status == o.last_transaction_status &&
          mandate_creation_date == o.mandate_creation_date &&
          mandate_id == o.mandate_id &&
          mandate_received == o.mandate_received &&
          mandate_update_date == o.mandate_update_date &&
          max_consecutive_payment_failures == o.max_consecutive_payment_failures &&
          name == o.name &&
          num_consecutive_failures == o.num_consecutive_failures &&
          payment_method_id == o.payment_method_id &&
          payment_method_status == o.payment_method_status &&
          payment_retry_window == o.payment_retry_window &&
          paypal_baid == o.paypal_baid &&
          paypal_email == o.paypal_email &&
          paypal_preapproval_key == o.paypal_preapproval_key &&
          paypal_type == o.paypal_type &&
          phone == o.phone &&
          postal_code == o.postal_code &&
          second_token_id == o.second_token_id &&
          state == o.state &&
          street_name == o.street_name &&
          street_number == o.street_number &&
          token_id == o.token_id &&
          total_number_of_error_payments == o.total_number_of_error_payments &&
          total_number_of_processed_payments == o.total_number_of_processed_payments &&
          type == o.type &&
          use_default_retry_rule == o.use_default_retry_rule
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id, ach_aba_code, ach_account_name, ach_account_number_mask, ach_account_type, ach_bank_name, bank_branch_code, bank_check_digit, bank_city, bank_code, bank_identification_number, bank_name, bank_postal_code, bank_street_name, bank_street_number, bank_transfer_account_name, bank_transfer_account_number_mask, bank_transfer_account_type, bank_transfer_type, business_identification_code, city, country, credit_card_address1, credit_card_address2, credit_card_city, credit_card_country, credit_card_expiration_month, credit_card_expiration_year, credit_card_holder_name, credit_card_mask_number, credit_card_postal_code, credit_card_state, credit_card_type, device_session_id, email, existing_mandate, first_name, iban, ip_address, id, last_failed_sale_transaction_date, last_name, last_transaction_date_time, last_transaction_status, mandate_creation_date, mandate_id, mandate_received, mandate_update_date, max_consecutive_payment_failures, name, num_consecutive_failures, payment_method_id, payment_method_status, payment_retry_window, paypal_baid, paypal_email, paypal_preapproval_key, paypal_type, phone, postal_code, second_token_id, state, street_name, street_number, token_id, total_number_of_error_payments, total_number_of_processed_payments, type, use_default_retry_rule].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
