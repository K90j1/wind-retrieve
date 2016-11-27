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

  class ProxyCreateAccount
    # Unique account number assigned to the account. **Character limit**: 50 **Values**: one of the following:  - null to auto-generate - a string of 50 characters or fewer that doesn't begin with the default account number prefix 
    attr_accessor :account_number

    # List of additional email addresses to receive emailed invoices. **Character limit**: 120 **Values**: comma-separated list of email addresses 
    attr_accessor :additional_email_addresses

    #  Indicates if associated invoices can be edited. **Character limit**: 5 **Values**: `true`, `false` (default if left null) 
    attr_accessor :allow_invoice_edit

    #  Indicates if future payments are automatically collected when they're due during a Payment Run. **Character limit**: 5 **Values**: `true`, `false` (default) 
    attr_accessor :auto_pay

    # Current outstanding balance for the account. **Character limit**: 16 **Values**: automatically generated 
    attr_accessor :balance

    #  Organizes your customer accounts into groups to optimize your billing and payment operations. Required if use the Subscribe call **Character limit**: 20 **Values**:any system-defined batch (`Batch1` - `Batch50 `or by name). 
    attr_accessor :batch

    # Billing cycle day setting option. **Character limit**: 9 **Values**: `AutoSet`, `ManualSet` 
    attr_accessor :bcd_setting_option

    # Billing cycle day (BCD) on which bill runs generate invoices for the account. **Character limit**: 2 **Values**: any activated system-defined bill cycle day (`1` - `31`) 
    attr_accessor :bill_cycle_day

    # ID of the person to bill for the account. **Character limit**: 32 **Values**: a valid contact ID for the account 
    attr_accessor :bill_to_id

    # Associates the account with a specified communication profile. **Character limit**: 32 **Values**: a valid communication profile ID 
    attr_accessor :communication_profile_id

    # Total credit balance for the account. **Character limit**: 16 **Values**: automatically generated 
    attr_accessor :credit_balance

    # CRM account ID for the account. A CRM is a customer relationship management system, such as Salesforce.com. **Character limit**: 100 **Values**: a string of 100 characters or fewer 
    attr_accessor :crm_id

    #  Currency that the customer is billed in. 
    attr_accessor :currency

    # Name of the account's customer service representative, if applicable. **Character limit**: 50 **Values**: a string of 50 characters or fewer 
    attr_accessor :customer_service_rep_name

    # ID of the default payment method for the account. This field is required if the AutoPay field is set to `true`. **Character limit**: 32 **Values**: a valid ID for an existing payment method 
    attr_accessor :default_payment_method_id

    # Indicates if the customer wants to receive invoices through email.  **Character limit**: 5 **Values**: `true`, `false` (default if left null) 
    attr_accessor :invoice_delivery_prefs_email

    # Indicates if the customer wants to receive printed invoices, such as through postal mail. **Character limit**: 5 **Values**: `true`, `false` (default if left null) 
    attr_accessor :invoice_delivery_prefs_print

    # The ID of the invoice template. Each customer account can use a specific invoice template for invoice generation. **Character limit**: 32 **Values**: a valid template ID configured in Zuora Billing Settings 
    attr_accessor :invoice_template_id

    # Name of the account as displayed in the Zuora UI. **Character limit**: 255 **Values**: a string of 255 characters or fewer 
    attr_accessor :name

    #  Comments about the account. **Character limit**: 65,535 **Values**: a string of 65,535 characters 
    attr_accessor :notes

    # Identifier of the parent customer account for this Account object. Use this field if you have customer hierarchy enabled. **Character limit**: 32 **Values**: a valid account ID 
    attr_accessor :parent_id

    # Gateway used for processing electronic payments and refunds. **Character limit**: 40 **Values**: one of the following:  - a valid configured gateway name - Null to inherit the default value set in Zuora Payment Settings 
    attr_accessor :payment_gateway

    # Indicates when the customer pays for subscriptions. **Character limit**: 100 **Values**: a valid, active payment term defined in the web-based UI administrative settings 
    attr_accessor :payment_term

    # The number of the purchase order associated with this account. Purchase order information generally comes from customers. **Character limit**: 100 **Values**: a string of 100 characters or fewer 
    attr_accessor :purchase_order_number

    # The name of the sales representative associated with this account, if applicable. **Character limit**: 50 **Values**: a string of 50 characters or fewer 
    attr_accessor :sales_rep_name

    # ID of the person who bought the subscription associated with the account. **Character limit**: 32 **Values**: a valid contact ID for the account 
    attr_accessor :sold_to_id

    # Status of the account in the system. **Character limit**: 8 **Values**: one of the following:  - leave null if you're using The Subscribe call - if you're using Create: - `Draft` - `Active` - `Canceled` 
    attr_accessor :status

    #  Unique code that identifies a company account in Avalara. Use this field to calculate taxes based on origin and sold-to addresses in Avalara. This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://support.zuora.com/).  **Character limit**: 50 **Values**: a valid company code 
    attr_accessor :tax_company_code

    # ID of your customer's tax exemption certificate. **Character limit**: 32 **Values**: a string of 32 characters or fewer 
    attr_accessor :tax_exempt_certificate_id

    # Type of the tax exemption certificate that your customer holds.  **Character limit**: 32 **Values**: a string of 32 characters or fewer 
    attr_accessor :tax_exempt_certificate_type

    # Description of the tax exemption certificate that your customer holds. **Character limit**: 500 **Values**: a string of 500 characters or fewer 
    attr_accessor :tax_exempt_description

    # Date when the the customer's tax exemption starts. **Character limit**: 29 **Version notes**: requires Zuora Tax 
    attr_accessor :tax_exempt_effective_date

    # Date when the customer's tax exemption certificate expires  **Character limit**: 29 **Version notes**: requires Zuora Tax 
    attr_accessor :tax_exempt_expiration_date

    # Indicates the jurisdiction in which the customer's tax exemption certificate was issued. **Character limit**: 32 **Values**: a string of 32 characters or fewer 
    attr_accessor :tax_exempt_issuing_jurisdiction

    #  Status of the account's tax exemption. Required if you use Zuora Tax. **Character limit**: 19 **Values**: one of the following:  - `Yes` - `No` - `PendingVerification` 
    attr_accessor :tax_exempt_status

    # Total balance of the account's invoices. **Character limit**: 16 **Values**: a valid currency value 
    attr_accessor :total_invoice_balance

    #  EU Value Added Tax ID. This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://support.zuora.com/).  **Character limit**: 25 **Values**: a valid Value Added Tax ID 
    attr_accessor :vat_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_number' => :'AccountNumber',
        :'additional_email_addresses' => :'AdditionalEmailAddresses',
        :'allow_invoice_edit' => :'AllowInvoiceEdit',
        :'auto_pay' => :'AutoPay',
        :'balance' => :'Balance',
        :'batch' => :'Batch',
        :'bcd_setting_option' => :'BcdSettingOption',
        :'bill_cycle_day' => :'BillCycleDay',
        :'bill_to_id' => :'BillToId',
        :'communication_profile_id' => :'CommunicationProfileId',
        :'credit_balance' => :'CreditBalance',
        :'crm_id' => :'CrmId',
        :'currency' => :'Currency',
        :'customer_service_rep_name' => :'CustomerServiceRepName',
        :'default_payment_method_id' => :'DefaultPaymentMethodId',
        :'invoice_delivery_prefs_email' => :'InvoiceDeliveryPrefsEmail',
        :'invoice_delivery_prefs_print' => :'InvoiceDeliveryPrefsPrint',
        :'invoice_template_id' => :'InvoiceTemplateId',
        :'name' => :'Name',
        :'notes' => :'Notes',
        :'parent_id' => :'ParentId',
        :'payment_gateway' => :'PaymentGateway',
        :'payment_term' => :'PaymentTerm',
        :'purchase_order_number' => :'PurchaseOrderNumber',
        :'sales_rep_name' => :'SalesRepName',
        :'sold_to_id' => :'SoldToId',
        :'status' => :'Status',
        :'tax_company_code' => :'TaxCompanyCode',
        :'tax_exempt_certificate_id' => :'TaxExemptCertificateID',
        :'tax_exempt_certificate_type' => :'TaxExemptCertificateType',
        :'tax_exempt_description' => :'TaxExemptDescription',
        :'tax_exempt_effective_date' => :'TaxExemptEffectiveDate',
        :'tax_exempt_expiration_date' => :'TaxExemptExpirationDate',
        :'tax_exempt_issuing_jurisdiction' => :'TaxExemptIssuingJurisdiction',
        :'tax_exempt_status' => :'TaxExemptStatus',
        :'total_invoice_balance' => :'TotalInvoiceBalance',
        :'vat_id' => :'VATId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_number' => :'String',
        :'additional_email_addresses' => :'String',
        :'allow_invoice_edit' => :'BOOLEAN',
        :'auto_pay' => :'BOOLEAN',
        :'balance' => :'Float',
        :'batch' => :'String',
        :'bcd_setting_option' => :'String',
        :'bill_cycle_day' => :'Integer',
        :'bill_to_id' => :'String',
        :'communication_profile_id' => :'String',
        :'credit_balance' => :'Float',
        :'crm_id' => :'String',
        :'currency' => :'String',
        :'customer_service_rep_name' => :'String',
        :'default_payment_method_id' => :'String',
        :'invoice_delivery_prefs_email' => :'BOOLEAN',
        :'invoice_delivery_prefs_print' => :'BOOLEAN',
        :'invoice_template_id' => :'String',
        :'name' => :'String',
        :'notes' => :'String',
        :'parent_id' => :'String',
        :'payment_gateway' => :'String',
        :'payment_term' => :'String',
        :'purchase_order_number' => :'String',
        :'sales_rep_name' => :'String',
        :'sold_to_id' => :'String',
        :'status' => :'String',
        :'tax_company_code' => :'String',
        :'tax_exempt_certificate_id' => :'String',
        :'tax_exempt_certificate_type' => :'String',
        :'tax_exempt_description' => :'String',
        :'tax_exempt_effective_date' => :'Date',
        :'tax_exempt_expiration_date' => :'Date',
        :'tax_exempt_issuing_jurisdiction' => :'String',
        :'tax_exempt_status' => :'String',
        :'total_invoice_balance' => :'Float',
        :'vat_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AccountNumber')
        self.account_number = attributes[:'AccountNumber']
      end

      if attributes.has_key?(:'AdditionalEmailAddresses')
        self.additional_email_addresses = attributes[:'AdditionalEmailAddresses']
      end

      if attributes.has_key?(:'AllowInvoiceEdit')
        self.allow_invoice_edit = attributes[:'AllowInvoiceEdit']
      end

      if attributes.has_key?(:'AutoPay')
        self.auto_pay = attributes[:'AutoPay']
      end

      if attributes.has_key?(:'Balance')
        self.balance = attributes[:'Balance']
      end

      if attributes.has_key?(:'Batch')
        self.batch = attributes[:'Batch']
      end

      if attributes.has_key?(:'BcdSettingOption')
        self.bcd_setting_option = attributes[:'BcdSettingOption']
      end

      if attributes.has_key?(:'BillCycleDay')
        self.bill_cycle_day = attributes[:'BillCycleDay']
      end

      if attributes.has_key?(:'BillToId')
        self.bill_to_id = attributes[:'BillToId']
      end

      if attributes.has_key?(:'CommunicationProfileId')
        self.communication_profile_id = attributes[:'CommunicationProfileId']
      end

      if attributes.has_key?(:'CreditBalance')
        self.credit_balance = attributes[:'CreditBalance']
      end

      if attributes.has_key?(:'CrmId')
        self.crm_id = attributes[:'CrmId']
      end

      if attributes.has_key?(:'Currency')
        self.currency = attributes[:'Currency']
      end

      if attributes.has_key?(:'CustomerServiceRepName')
        self.customer_service_rep_name = attributes[:'CustomerServiceRepName']
      end

      if attributes.has_key?(:'DefaultPaymentMethodId')
        self.default_payment_method_id = attributes[:'DefaultPaymentMethodId']
      end

      if attributes.has_key?(:'InvoiceDeliveryPrefsEmail')
        self.invoice_delivery_prefs_email = attributes[:'InvoiceDeliveryPrefsEmail']
      end

      if attributes.has_key?(:'InvoiceDeliveryPrefsPrint')
        self.invoice_delivery_prefs_print = attributes[:'InvoiceDeliveryPrefsPrint']
      end

      if attributes.has_key?(:'InvoiceTemplateId')
        self.invoice_template_id = attributes[:'InvoiceTemplateId']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'Notes')
        self.notes = attributes[:'Notes']
      end

      if attributes.has_key?(:'ParentId')
        self.parent_id = attributes[:'ParentId']
      end

      if attributes.has_key?(:'PaymentGateway')
        self.payment_gateway = attributes[:'PaymentGateway']
      end

      if attributes.has_key?(:'PaymentTerm')
        self.payment_term = attributes[:'PaymentTerm']
      end

      if attributes.has_key?(:'PurchaseOrderNumber')
        self.purchase_order_number = attributes[:'PurchaseOrderNumber']
      end

      if attributes.has_key?(:'SalesRepName')
        self.sales_rep_name = attributes[:'SalesRepName']
      end

      if attributes.has_key?(:'SoldToId')
        self.sold_to_id = attributes[:'SoldToId']
      end

      if attributes.has_key?(:'Status')
        self.status = attributes[:'Status']
      end

      if attributes.has_key?(:'TaxCompanyCode')
        self.tax_company_code = attributes[:'TaxCompanyCode']
      end

      if attributes.has_key?(:'TaxExemptCertificateID')
        self.tax_exempt_certificate_id = attributes[:'TaxExemptCertificateID']
      end

      if attributes.has_key?(:'TaxExemptCertificateType')
        self.tax_exempt_certificate_type = attributes[:'TaxExemptCertificateType']
      end

      if attributes.has_key?(:'TaxExemptDescription')
        self.tax_exempt_description = attributes[:'TaxExemptDescription']
      end

      if attributes.has_key?(:'TaxExemptEffectiveDate')
        self.tax_exempt_effective_date = attributes[:'TaxExemptEffectiveDate']
      end

      if attributes.has_key?(:'TaxExemptExpirationDate')
        self.tax_exempt_expiration_date = attributes[:'TaxExemptExpirationDate']
      end

      if attributes.has_key?(:'TaxExemptIssuingJurisdiction')
        self.tax_exempt_issuing_jurisdiction = attributes[:'TaxExemptIssuingJurisdiction']
      end

      if attributes.has_key?(:'TaxExemptStatus')
        self.tax_exempt_status = attributes[:'TaxExemptStatus']
      end

      if attributes.has_key?(:'TotalInvoiceBalance')
        self.total_invoice_balance = attributes[:'TotalInvoiceBalance']
      end

      if attributes.has_key?(:'VATId')
        self.vat_id = attributes[:'VATId']
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
      return false if @balance.nil?
      return false if @bcd_setting_option.nil?
      return false if @bill_cycle_day.nil?
      return false if @credit_balance.nil?
      return false if @currency.nil?
      return false if @name.nil?
      return false if @status.nil?
      return false if @total_invoice_balance.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_number == o.account_number &&
          additional_email_addresses == o.additional_email_addresses &&
          allow_invoice_edit == o.allow_invoice_edit &&
          auto_pay == o.auto_pay &&
          balance == o.balance &&
          batch == o.batch &&
          bcd_setting_option == o.bcd_setting_option &&
          bill_cycle_day == o.bill_cycle_day &&
          bill_to_id == o.bill_to_id &&
          communication_profile_id == o.communication_profile_id &&
          credit_balance == o.credit_balance &&
          crm_id == o.crm_id &&
          currency == o.currency &&
          customer_service_rep_name == o.customer_service_rep_name &&
          default_payment_method_id == o.default_payment_method_id &&
          invoice_delivery_prefs_email == o.invoice_delivery_prefs_email &&
          invoice_delivery_prefs_print == o.invoice_delivery_prefs_print &&
          invoice_template_id == o.invoice_template_id &&
          name == o.name &&
          notes == o.notes &&
          parent_id == o.parent_id &&
          payment_gateway == o.payment_gateway &&
          payment_term == o.payment_term &&
          purchase_order_number == o.purchase_order_number &&
          sales_rep_name == o.sales_rep_name &&
          sold_to_id == o.sold_to_id &&
          status == o.status &&
          tax_company_code == o.tax_company_code &&
          tax_exempt_certificate_id == o.tax_exempt_certificate_id &&
          tax_exempt_certificate_type == o.tax_exempt_certificate_type &&
          tax_exempt_description == o.tax_exempt_description &&
          tax_exempt_effective_date == o.tax_exempt_effective_date &&
          tax_exempt_expiration_date == o.tax_exempt_expiration_date &&
          tax_exempt_issuing_jurisdiction == o.tax_exempt_issuing_jurisdiction &&
          tax_exempt_status == o.tax_exempt_status &&
          total_invoice_balance == o.total_invoice_balance &&
          vat_id == o.vat_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_number, additional_email_addresses, allow_invoice_edit, auto_pay, balance, batch, bcd_setting_option, bill_cycle_day, bill_to_id, communication_profile_id, credit_balance, crm_id, currency, customer_service_rep_name, default_payment_method_id, invoice_delivery_prefs_email, invoice_delivery_prefs_print, invoice_template_id, name, notes, parent_id, payment_gateway, payment_term, purchase_order_number, sales_rep_name, sold_to_id, status, tax_company_code, tax_exempt_certificate_id, tax_exempt_certificate_type, tax_exempt_description, tax_exempt_effective_date, tax_exempt_expiration_date, tax_exempt_issuing_jurisdiction, tax_exempt_status, total_invoice_balance, vat_id].hash
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