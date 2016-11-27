# SwaggerClient::POSTSubscriptionCancellationResponseType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelled_date** | **Date** | The date that the subscription was canceled.  | [optional] 
**invoice_id** | **String** | ID of the invoice, if one is generated.  | [optional] 
**paid_amount** | **String** | Amount paid.  | [optional] 
**payment_id** | **String** | ID of the payment, if a payment is collected.  | [optional] 
**subscription_id** | **String** | The subscription ID.  | [optional] 
**success** | **BOOLEAN** | Returns &#x60;true&#x60; if the request was processed successfully.  | [optional] 
**total_delta_mrr** | **String** | Change in the subscription monthly recurring revenue as a result of the update.  | [optional] 
**total_delta_tcv** | **String** | Change in the total contracted value of the subscription as a result of the update.  | [optional] 


