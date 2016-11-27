# SwaggerClient::POSTSubscriptionPreviewResponseType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Invoice amount.  | [optional] 
**amount_without_tax** | **String** | Invoice amount minus tax.  | [optional] 
**charge_metrics** | [**POSTSubscriptionPreviewResponseTypeChargeMetrics**](POSTSubscriptionPreviewResponseTypeChargeMetrics.md) |  | [optional] 
**contracted_mrr** | **String** | Monthly recurring revenue of the subscription.  | [optional] 
**invoice_items** | [**Array&lt;POSTSubscriptionPreviewInvoiceItemsType&gt;**](POSTSubscriptionPreviewInvoiceItemsType.md) | Container for invoice items.  | [optional] 
**invoice_target_date** | **Date** | Date through which charges are calculated on the invoice, as yyyy-mm-dd.  | [optional] 
**preview_charge_metrics_response** | **String** |  | [optional] 
**success** | **BOOLEAN** | Returns &#x60;true&#x60; if the request was processed successfully.  | [optional] 
**tax_amount** | **String** | Tax amount on the invoice.  | [optional] 
**total_contracted_value** | **String** | Total contracted value of the subscription.  | [optional] 


