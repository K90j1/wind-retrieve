# SwaggerClient::GETAccountSummaryTypeBasicInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **String** | Account number.  | [optional] 
**balance** | **String** | Current outstanding balance.  | [optional] 
**batch** | **String** | The alias name given to a batch. A string of 50 characters or less.  | [optional] 
**bill_cycle_day** | **String** | Billing cycle day (BCD), the day of the month when a bill run generates invoices for the account.  | [optional] 
**currency** | **String** | A currency value. See [Customize Currencies](https://knowledgecenter.zuora.com/CB_Billing/Billing_Settings/Customize_Currencies) for more information.  | [optional] 
**custom_field__c** | **String** | Any custom fields defined for this object.  | [optional] 
**default_payment_method** | [**GETAccountSummaryTypeBasicInfoDefaultPaymentMethod**](GETAccountSummaryTypeBasicInfoDefaultPaymentMethod.md) |  | [optional] 
**id** | **String** | Account ID.  | [optional] 
**last_invoice_date** | **Date** | Date of the most recent invoice for the account; null if no invoice has ever been generated.  | [optional] 
**last_payment_amount** | **String** | Amount of the most recent payment collected for the account; null if no payment has ever been collected.  | [optional] 
**last_payment_date** | **Date** | Date of the most recent payment collected for the account. Null if no payment has ever been collected.  | [optional] 
**name** | **String** | Account name.  | [optional] 
**status** | **String** | Account status; possible values are: &#x60;Active&#x60;, &#x60;Draft&#x60;, &#x60;Canceled&#x60;.  | [optional] 
**tags** | **String** |  | [optional] 


