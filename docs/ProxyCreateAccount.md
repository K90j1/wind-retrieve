# SwaggerClient::ProxyCreateAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **String** | Unique account number assigned to the account. **Character limit**: 50 **Values**: one of the following:  - null to auto-generate - a string of 50 characters or fewer that doesn&#39;t begin with the default account number prefix  | [optional] 
**additional_email_addresses** | **String** | List of additional email addresses to receive emailed invoices. **Character limit**: 120 **Values**: comma-separated list of email addresses  | [optional] 
**allow_invoice_edit** | **BOOLEAN** |  Indicates if associated invoices can be edited. **Character limit**: 5 **Values**: &#x60;true&#x60;, &#x60;false&#x60; (default if left null)  | [optional] 
**auto_pay** | **BOOLEAN** |  Indicates if future payments are automatically collected when they&#39;re due during a Payment Run. **Character limit**: 5 **Values**: &#x60;true&#x60;, &#x60;false&#x60; (default)  | [optional] 
**balance** | **Float** | Current outstanding balance for the account. **Character limit**: 16 **Values**: automatically generated  | 
**batch** | **String** |  Organizes your customer accounts into groups to optimize your billing and payment operations. Required if use the Subscribe call **Character limit**: 20 **Values**:any system-defined batch (&#x60;Batch1&#x60; - &#x60;Batch50 &#x60;or by name).  | [optional] 
**bcd_setting_option** | **String** | Billing cycle day setting option. **Character limit**: 9 **Values**: &#x60;AutoSet&#x60;, &#x60;ManualSet&#x60;  | 
**bill_cycle_day** | **Integer** | Billing cycle day (BCD) on which bill runs generate invoices for the account. **Character limit**: 2 **Values**: any activated system-defined bill cycle day (&#x60;1&#x60; - &#x60;31&#x60;)  | 
**bill_to_id** | **String** | ID of the person to bill for the account. **Character limit**: 32 **Values**: a valid contact ID for the account  | [optional] 
**communication_profile_id** | **String** | Associates the account with a specified communication profile. **Character limit**: 32 **Values**: a valid communication profile ID  | [optional] 
**credit_balance** | **Float** | Total credit balance for the account. **Character limit**: 16 **Values**: automatically generated  | 
**crm_id** | **String** | CRM account ID for the account. A CRM is a customer relationship management system, such as Salesforce.com. **Character limit**: 100 **Values**: a string of 100 characters or fewer  | [optional] 
**currency** | **String** |  Currency that the customer is billed in.  | 
**customer_service_rep_name** | **String** | Name of the account&#39;s customer service representative, if applicable. **Character limit**: 50 **Values**: a string of 50 characters or fewer  | [optional] 
**default_payment_method_id** | **String** | ID of the default payment method for the account. This field is required if the AutoPay field is set to &#x60;true&#x60;. **Character limit**: 32 **Values**: a valid ID for an existing payment method  | [optional] 
**invoice_delivery_prefs_email** | **BOOLEAN** | Indicates if the customer wants to receive invoices through email.  **Character limit**: 5 **Values**: &#x60;true&#x60;, &#x60;false&#x60; (default if left null)  | [optional] 
**invoice_delivery_prefs_print** | **BOOLEAN** | Indicates if the customer wants to receive printed invoices, such as through postal mail. **Character limit**: 5 **Values**: &#x60;true&#x60;, &#x60;false&#x60; (default if left null)  | [optional] 
**invoice_template_id** | **String** | The ID of the invoice template. Each customer account can use a specific invoice template for invoice generation. **Character limit**: 32 **Values**: a valid template ID configured in Zuora Billing Settings  | [optional] 
**name** | **String** | Name of the account as displayed in the Zuora UI. **Character limit**: 255 **Values**: a string of 255 characters or fewer  | 
**notes** | **String** |  Comments about the account. **Character limit**: 65,535 **Values**: a string of 65,535 characters  | [optional] 
**parent_id** | **String** | Identifier of the parent customer account for this Account object. Use this field if you have customer hierarchy enabled. **Character limit**: 32 **Values**: a valid account ID  | [optional] 
**payment_gateway** | **String** | Gateway used for processing electronic payments and refunds. **Character limit**: 40 **Values**: one of the following:  - a valid configured gateway name - Null to inherit the default value set in Zuora Payment Settings  | [optional] 
**payment_term** | **String** | Indicates when the customer pays for subscriptions. **Character limit**: 100 **Values**: a valid, active payment term defined in the web-based UI administrative settings  | [optional] 
**purchase_order_number** | **String** | The number of the purchase order associated with this account. Purchase order information generally comes from customers. **Character limit**: 100 **Values**: a string of 100 characters or fewer  | [optional] 
**sales_rep_name** | **String** | The name of the sales representative associated with this account, if applicable. **Character limit**: 50 **Values**: a string of 50 characters or fewer  | [optional] 
**sold_to_id** | **String** | ID of the person who bought the subscription associated with the account. **Character limit**: 32 **Values**: a valid contact ID for the account  | [optional] 
**status** | **String** | Status of the account in the system. **Character limit**: 8 **Values**: one of the following:  - leave null if you&#39;re using The Subscribe call - if you&#39;re using Create: - &#x60;Draft&#x60; - &#x60;Active&#x60; - &#x60;Canceled&#x60;  | 
**tax_company_code** | **String** |  Unique code that identifies a company account in Avalara. Use this field to calculate taxes based on origin and sold-to addresses in Avalara. This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://support.zuora.com/).  **Character limit**: 50 **Values**: a valid company code  | [optional] 
**tax_exempt_certificate_id** | **String** | ID of your customer&#39;s tax exemption certificate. **Character limit**: 32 **Values**: a string of 32 characters or fewer  | [optional] 
**tax_exempt_certificate_type** | **String** | Type of the tax exemption certificate that your customer holds.  **Character limit**: 32 **Values**: a string of 32 characters or fewer  | [optional] 
**tax_exempt_description** | **String** | Description of the tax exemption certificate that your customer holds. **Character limit**: 500 **Values**: a string of 500 characters or fewer  | [optional] 
**tax_exempt_effective_date** | **Date** | Date when the the customer&#39;s tax exemption starts. **Character limit**: 29 **Version notes**: requires Zuora Tax  | [optional] 
**tax_exempt_expiration_date** | **Date** | Date when the customer&#39;s tax exemption certificate expires  **Character limit**: 29 **Version notes**: requires Zuora Tax  | [optional] 
**tax_exempt_issuing_jurisdiction** | **String** | Indicates the jurisdiction in which the customer&#39;s tax exemption certificate was issued. **Character limit**: 32 **Values**: a string of 32 characters or fewer  | [optional] 
**tax_exempt_status** | **String** |  Status of the account&#39;s tax exemption. Required if you use Zuora Tax. **Character limit**: 19 **Values**: one of the following:  - &#x60;Yes&#x60; - &#x60;No&#x60; - &#x60;PendingVerification&#x60;  | [optional] 
**total_invoice_balance** | **Float** | Total balance of the account&#39;s invoices. **Character limit**: 16 **Values**: a valid currency value  | 
**vat_id** | **String** |  EU Value Added Tax ID. This feature is in **Limited Availability**. If you wish to have access to the feature, submit a request at [Zuora Global Support](http://support.zuora.com/).  **Character limit**: 25 **Values**: a valid Value Added Tax ID  | [optional] 


