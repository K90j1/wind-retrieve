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

  class Amendment
    #  Determines whether the subscription is automatically renewed, or whether it expires at the end of the term and needs to be manually renewed. **Required:** For amendment of type TermsAndConditions when changing the automatic renewal status of a subscription.   **Values**: true, false 
    attr_accessor :auto_renew

    #  A unique alphanumeric string that identifies the amendment.   **Character limit**: 50  **Values**: one of the following:  - `null` generates a value automatically - A string 
    attr_accessor :code

    #  The date when the amendment's changes become effective for billing purposes. 
    attr_accessor :contract_effective_date

    #  The user ID of the person who created the amendment.   **Character limit**: 32  **Values**: automatically generated 
    attr_accessor :created_by_id

    #  The date when the amendment was created.   **Values**: automatically generated 
    attr_accessor :created_date

    #  The length of the period for the current subscription term. This field can be updated when Status is `Draft`.  **Required**: Only if the value of the Type field is set to `TermsAndConditions` and TermType is set to `TERMED`. This field is not required if `TermType` is set to `EVERGREEN`.   **Values**: a valid number 
    attr_accessor :current_term

    #  The period type for the current subscription term.  **Values**:  - `Month` (default) - `Year` - `Day` - `Week`   **Note**:  - This field can be updated when Status is `Draft`. - This field is used with the CurrentTerm field to specify the current subscription term. 
    attr_accessor :current_term_period_type

    #  The date when the customer accepts the amendment's changes to the subscription. Use this field if [Zuora is configured to require customer acceptance in Z-Billing](https://knowledgecenter.zuora.com/CB_Billing/W_Billing_and_Payments_Settings/Define_Default_Subscription_Settings). **Required**: Only if the value of the Status field is set to PendingAcceptance.  
    attr_accessor :customer_acceptance_date

    #  A description of the amendment.   **Character limit**: 500  **Values**: maximum 500 characters 
    attr_accessor :description

    #  The ID of the account that the subscription is being transferred to.   **Character limit**: 32  **Values**: a valid account ID 
    attr_accessor :destination_account_id

    #  The ID of the invoice that the subscription is being transferred to.   **Character limit**: 32  **Values**: a valid invoice ID 
    attr_accessor :destination_invoice_owner_id

    #  The date when the amendment's changes take effective. This field validates that the amendment's changes are within valid ranges of products and product rate plans. **Required**: For the cancellation amendments. Optional for other types of amendments.  
    attr_accessor :effective_date

    #  The name of the amendment.   **Character limit**: 100  **Values**: a string of 100 characters or fewer 
    attr_accessor :name

    # A container for one `RatePlanData`. 
    attr_accessor :rate_plan_data

    #  Specifies whether a termed subscription will remain termed or change to evergreen when it is renewed. **Required**: If TermType is Termed  **Values**: RENEW_WITH_SPECIFIC_TERM (default), RENEW_TO_EVERGREEN 
    attr_accessor :renewal_setting

    #  The term of renewal for the amended subscription. This field can be updated when Status is `Draft`. **Required**: Only if the value of the `Type` field is set to `TermsAndConditions`.    **Values:** a valid number 
    attr_accessor :renewal_term

    #  The period type for the subscription renewal term. This field can be updated when Status is `Draft`. **Required**: Only if the value of the Type field is set to `TermsAndConditions`. This field is used with the RenewalTerm field to specify the subscription renewal term.   **Values**:  - `Month` (default) - `Year` - `Day` - `Week` 
    attr_accessor :renewal_term_period_type

    #  The date when service is activated. Use this field if [Zuora is configured to require service activation in Z-Billing](https://knowledgecenter.zuora.com/CB_Billing/W_Billing_and_Payments_Settings/Define_Default_Subscription_Settings).  **Required**: Only if the value of the `Status` field is set to `PendingActivation`. 
    attr_accessor :service_activation_date

    # The date when the UpdateProduct amendment takes effect. This field is only applicable if there is already a future-dated UpdateProduct amendment on the subscription.   **Required**: Only for the UpdateProduct amendments if there is already a future-dated UpdateProduct amendment on the subscription. 
    attr_accessor :specific_update_date

    #  The status of the amendment. Type: string (enum)    **Values**: one of the following:  - Draft (default, if left null) - Pending Activation - Pending Acceptance - Completed 
    attr_accessor :status

    #  The ID of the subscription that the amendment changes.   **Character limit**: 32  **Values**: a valid subscription ID 
    attr_accessor :subscription_id

    #  The date when the new terms and conditions take effect. **Required**: Only if the value of the Type field is set to TermsAndConditions. 
    attr_accessor :term_start_date

    #  Indicates if the subscription isTERMED or EVERGREEN.  - A TERMED subscription has an expiration date, and must be manually renewed. - An EVERGREEN subscription doesn't have an expiration date, and must be manually ended.  **Required**: Only when as part of an amendment of type TermsAndConditions &#65279;to change the term type of a subscription. Type: string  **Character limit**: 9  **Values**: TERMED, EVERGREEN 
    attr_accessor :term_type

    #  The type of amendment.   **Character limit**: 18    **Values**: one of the following:  - Cancellation - NewProduct - OwnerTransfer - RemoveProduct - Renewal - UpdateProduct - TermsAndConditions - SuspendSubscription (This value is in **Limited Availability**.) - ResumeSubscription (This value is in **Limited Availability**.) 
    attr_accessor :type

    #  The ID of the user who last updated the amendment.   **Character limit**: 32  **Values**: automatically generated 
    attr_accessor :updated_by_id

    #  The date when the amendment was last updated.   **Values**: automatically generated 
    attr_accessor :updated_date


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_renew' => :'AutoRenew',
        :'code' => :'Code',
        :'contract_effective_date' => :'ContractEffectiveDate',
        :'created_by_id' => :'CreatedById',
        :'created_date' => :'CreatedDate',
        :'current_term' => :'CurrentTerm',
        :'current_term_period_type' => :'CurrentTermPeriodType',
        :'customer_acceptance_date' => :'CustomerAcceptanceDate',
        :'description' => :'Description',
        :'destination_account_id' => :'DestinationAccountId',
        :'destination_invoice_owner_id' => :'DestinationInvoiceOwnerId',
        :'effective_date' => :'EffectiveDate',
        :'name' => :'Name',
        :'rate_plan_data' => :'RatePlanData',
        :'renewal_setting' => :'RenewalSetting',
        :'renewal_term' => :'RenewalTerm',
        :'renewal_term_period_type' => :'RenewalTermPeriodType',
        :'service_activation_date' => :'ServiceActivationDate',
        :'specific_update_date' => :'SpecificUpdateDate',
        :'status' => :'Status',
        :'subscription_id' => :'SubscriptionId',
        :'term_start_date' => :'TermStartDate',
        :'term_type' => :'TermType',
        :'type' => :'Type',
        :'updated_by_id' => :'UpdatedById',
        :'updated_date' => :'UpdatedDate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_renew' => :'BOOLEAN',
        :'code' => :'String',
        :'contract_effective_date' => :'Date',
        :'created_by_id' => :'String',
        :'created_date' => :'DateTime',
        :'current_term' => :'Integer',
        :'current_term_period_type' => :'String',
        :'customer_acceptance_date' => :'Date',
        :'description' => :'String',
        :'destination_account_id' => :'String',
        :'destination_invoice_owner_id' => :'String',
        :'effective_date' => :'Date',
        :'name' => :'String',
        :'rate_plan_data' => :'Array<RatePlanData>',
        :'renewal_setting' => :'String',
        :'renewal_term' => :'Integer',
        :'renewal_term_period_type' => :'String',
        :'service_activation_date' => :'Date',
        :'specific_update_date' => :'Date',
        :'status' => :'String',
        :'subscription_id' => :'String',
        :'term_start_date' => :'Date',
        :'term_type' => :'String',
        :'type' => :'String',
        :'updated_by_id' => :'String',
        :'updated_date' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AutoRenew')
        self.auto_renew = attributes[:'AutoRenew']
      end

      if attributes.has_key?(:'Code')
        self.code = attributes[:'Code']
      end

      if attributes.has_key?(:'ContractEffectiveDate')
        self.contract_effective_date = attributes[:'ContractEffectiveDate']
      end

      if attributes.has_key?(:'CreatedById')
        self.created_by_id = attributes[:'CreatedById']
      end

      if attributes.has_key?(:'CreatedDate')
        self.created_date = attributes[:'CreatedDate']
      end

      if attributes.has_key?(:'CurrentTerm')
        self.current_term = attributes[:'CurrentTerm']
      end

      if attributes.has_key?(:'CurrentTermPeriodType')
        self.current_term_period_type = attributes[:'CurrentTermPeriodType']
      end

      if attributes.has_key?(:'CustomerAcceptanceDate')
        self.customer_acceptance_date = attributes[:'CustomerAcceptanceDate']
      end

      if attributes.has_key?(:'Description')
        self.description = attributes[:'Description']
      end

      if attributes.has_key?(:'DestinationAccountId')
        self.destination_account_id = attributes[:'DestinationAccountId']
      end

      if attributes.has_key?(:'DestinationInvoiceOwnerId')
        self.destination_invoice_owner_id = attributes[:'DestinationInvoiceOwnerId']
      end

      if attributes.has_key?(:'EffectiveDate')
        self.effective_date = attributes[:'EffectiveDate']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'RatePlanData')
        if (value = attributes[:'RatePlanData']).is_a?(Array)
          self.rate_plan_data = value
        end
      end

      if attributes.has_key?(:'RenewalSetting')
        self.renewal_setting = attributes[:'RenewalSetting']
      end

      if attributes.has_key?(:'RenewalTerm')
        self.renewal_term = attributes[:'RenewalTerm']
      end

      if attributes.has_key?(:'RenewalTermPeriodType')
        self.renewal_term_period_type = attributes[:'RenewalTermPeriodType']
      end

      if attributes.has_key?(:'ServiceActivationDate')
        self.service_activation_date = attributes[:'ServiceActivationDate']
      end

      if attributes.has_key?(:'SpecificUpdateDate')
        self.specific_update_date = attributes[:'SpecificUpdateDate']
      end

      if attributes.has_key?(:'Status')
        self.status = attributes[:'Status']
      end

      if attributes.has_key?(:'SubscriptionId')
        self.subscription_id = attributes[:'SubscriptionId']
      end

      if attributes.has_key?(:'TermStartDate')
        self.term_start_date = attributes[:'TermStartDate']
      end

      if attributes.has_key?(:'TermType')
        self.term_type = attributes[:'TermType']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'UpdatedById')
        self.updated_by_id = attributes[:'UpdatedById']
      end

      if attributes.has_key?(:'UpdatedDate')
        self.updated_date = attributes[:'UpdatedDate']
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
          auto_renew == o.auto_renew &&
          code == o.code &&
          contract_effective_date == o.contract_effective_date &&
          created_by_id == o.created_by_id &&
          created_date == o.created_date &&
          current_term == o.current_term &&
          current_term_period_type == o.current_term_period_type &&
          customer_acceptance_date == o.customer_acceptance_date &&
          description == o.description &&
          destination_account_id == o.destination_account_id &&
          destination_invoice_owner_id == o.destination_invoice_owner_id &&
          effective_date == o.effective_date &&
          name == o.name &&
          rate_plan_data == o.rate_plan_data &&
          renewal_setting == o.renewal_setting &&
          renewal_term == o.renewal_term &&
          renewal_term_period_type == o.renewal_term_period_type &&
          service_activation_date == o.service_activation_date &&
          specific_update_date == o.specific_update_date &&
          status == o.status &&
          subscription_id == o.subscription_id &&
          term_start_date == o.term_start_date &&
          term_type == o.term_type &&
          type == o.type &&
          updated_by_id == o.updated_by_id &&
          updated_date == o.updated_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [auto_renew, code, contract_effective_date, created_by_id, created_date, current_term, current_term_period_type, customer_acceptance_date, description, destination_account_id, destination_invoice_owner_id, effective_date, name, rate_plan_data, renewal_setting, renewal_term, renewal_term_period_type, service_activation_date, specific_update_date, status, subscription_id, term_start_date, term_type, type, updated_by_id, updated_date].hash
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
