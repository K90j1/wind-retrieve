# SwaggerClient::SubscribeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | [**Array&lt;Account&gt;**](Account.md) |  This is the Account object containing the information for this particular subscription. It has all the information needed to create an account for a subscription.  **Values:** A valid account. | [optional] 
**bill_to_contact** | [**Array&lt;Contact&gt;**](Contact.md) |  This is the object that contains the contact associated with this account in the Account&#39;s &#x60;BillToId&#x60; field. This field is required only if the account does not exist. Values: A valid contact for the account. | [optional] 
**payment_method** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) |  This is the object defining the payment details for the Account. The Account will be updated with this payment as the default payment method. Use this field if you are associating an electronic payment method with the account. A payment gateway must be enabled. Values: A valid electronic PaymentMethod. | [optional] 
**preview_options** | [**Array&lt;PreviewOptions&gt;**](PreviewOptions.md) |  Specify true to call subscribe() with preview mode. After that is completed, the call system will roll back the subscription and return only the temporary invoice data. Specify false to call subscribe() without preview mode.  **Values:** &#x60;true&#x60;, &#x60;false&#x60;  | [optional] 
**sold_to_contact** | [**Array&lt;Contact&gt;**](Contact.md) |  Unless otherwise specified, this field defaults to the information in the &#x60;BillToContact&#x60; field.  **Values:** A valid contact.  | [optional] 
**subscribe_options** | [**Array&lt;SubscribeOptions&gt;**](SubscribeOptions.md) |  This optional object specifies parameters related to invoicing - whether to immediately generate an invoice and collect payment, and whether the invoice should cover all subscriptions or just this new subscription. The default behavior is to invoice immediately for all the account&#39;s subscriptions, with the current date as the target date, and immediately collect payment if the account&#39;s &#x60;AutoPay&#x60; flag is true.   **Values:** A valid SubscribeOptions object.  | [optional] 
**subscription_data** | [**Array&lt;SubscriptionData&gt;**](SubscriptionData.md) |  This object contains the information on the contract&#39;s dates and terms.   **Values:** A valid SubscriptionData object.  | [optional] 


