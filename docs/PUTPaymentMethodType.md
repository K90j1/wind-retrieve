# SwaggerClient::PUTPaymentMethodType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address_line1** | **String** | First address line, 255 characters or less.  | [optional] 
**address_line2** | **String** | Second address line, 255 characters or less.  | [optional] 
**card_holder_name** | **String** | The full name as it appears on the card, e.g., \&quot;John J Smith\&quot;, 50 characters or less.  | [optional] 
**city** | **String** | City, 40 characters or less.  | [optional] 
**country** | **String** | Country; must be a [valid country name or abbreviation](https://knowledgecenter.zuora.com/BC_Developers/SOAP_API/J_Country%2C_State%2C_and_Province_Codes/A_Country_Names_and_Their_ISO_Codes).  | [optional] 
**default_payment_method** | **BOOLEAN** | Specify \&quot;true\&quot; to make this card the default payment method; otherwise, omit this parameter to keep the current default payment method.  | [optional] 
**email** | **String** | Card holder&#39;s email address, 80 characters or less.  | [optional] 
**expiration_month** | **String** | Two-digit expiration month (01-12).  | [optional] 
**expiration_year** | **String** | Four-digit expiration year.  | [optional] 
**phone** | **String** | Phone number, 40 characters or less.  | [optional] 
**security_code** | **String** | The CVV or CVV2 security code for the credit card or debit card. Only required if changing expirationMonth, expirationYear, or cardHolderName. To ensure PCI compliance, this value isn&#39;t stored and can&#39;t be queried. For more information, see [How do I control what information Zuora sends over to the Payment Gateway](https://knowledgecenter.zuora.com/kb/How_do_I_control_what_information_Zuora_sends_over_to_the_payment_gateway_when_verifying_payment_methods%3F)?  | [optional] 
**state** | **String** | State; must be a [valid state name or 2-character abbreviation](https://knowledgecenter.zuora.com/BC_Developers/SOAP_API/J_Country%2C_State%2C_and_Province_Codes/B_State_Names_and_2-Digit_Codes).  | [optional] 
**zip_code** | **String** | Zip code, 20 characters or less.  | [optional] 


