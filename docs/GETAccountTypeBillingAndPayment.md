# SwaggerClient::GETAccountTypeBillingAndPayment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bill_cycle_day** | **String** | Billing cycle day (BCD), the day of the month when a bill run generates invoices for the account.  | [optional] 
**currency** | **String** | A currency defined in the [administrative web-based UI](https://knowledgecenter.zuora.com/CB_Billing/Billing_Settings/Customize_Currencies).  | [optional] 
**payment_gateway** | **String** | The name of the payment gateway instance. If null or left unassigned, the Account will use the Default Gateway.  | [optional] 
**payment_term** | **String** | A payment-terms indicator defined in the [web-based UI administrative settings](https://knowledgecenter.zuora.com/CB_Billing/Billing_Settings/Define_Payment_Terms), e.g., \&quot;Net 30\&quot;.  | [optional] 


