# SwaggerClient::PUTSubscriptionResumeResponseType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | **String** | Invoice ID, if an invoice is generated during the subscription process.  | [optional] 
**paid_amount** | **String** | Payment amount, if a payment is collected.  | [optional] 
**payment_id** | **String** | Payment ID, if a payment is collected.  | [optional] 
**resume_date** | **Date** | The date when subscription resumption takes effect, as yyyy-mm-dd.  | [optional] 
**subscription_id** | **String** | The subscription ID.  | [optional] 
**success** | **BOOLEAN** | Returns &#x60;true&#x60; if the request was processed successfully.  | [optional] 
**term_end_date** | **Date** | The date when the new subscription term ends, as yyyy-mm-dd.  | [optional] 
**total_delta_tcv** | **String** | Change in the total contracted value of the subscription as a result of the update.  | [optional] 


