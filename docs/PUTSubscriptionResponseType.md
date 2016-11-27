# SwaggerClient::PUTSubscriptionResponseType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Invoice amount. Preview mode only.  | [optional] 
**amount_without_tax** | **String** | Invoice amount minus tax. Preview mode only.  | [optional] 
**charge_metrics** | [**PUTSubscriptionResponseTypeChargeMetrics**](PUTSubscriptionResponseTypeChargeMetrics.md) |  | [optional] 
**invoice_id** | **String** | Invoice ID, if an invoice is generated during the update.  | [optional] 
**invoice_items** | [**Array&lt;PUTSubscriptionPreviewInvoiceItemsType&gt;**](PUTSubscriptionPreviewInvoiceItemsType.md) | Container for invoice items.  | [optional] 
**invoice_target_date** | **Date** | Date through which charges are calculated on the invoice, as yyyy-mm-dd. Preview mode only.  | [optional] 
**paid_amount** | **String** | Payment amount, if a payment is collected  | [optional] 
**payment_id** | **String** | Payment ID, if a payment is collected.  | [optional] 
**preview_charge_metrics_response** | **String** |  | [optional] 
**subscription_id** | **String** | The ID of the resulting new subscription.  | [optional] 
**success** | **BOOLEAN** | Returns &#x60;true&#x60; if the request was processed successfully.  | [optional] 
**tax_amount** | **String** | Tax amount on the invoice.  | [optional] 
**total_delta_mrr** | **String** | Change in the subscription monthly recurring revenue as a result of the update.  | [optional] 
**total_delta_tcv** | **String** | Change in the total contracted value of the subscription as a result of the update.  | [optional] 


