# SwaggerClient::ProxyModifyPayment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** |  The unique account ID for the customer that the payment is for. **Character limit**: 32 **Values**: a valid account ID  | [optional] 
**accounting_code** | **String** |  The Chart of Accounts  | [optional] 
**amount** | **Float** |  The amount of the payment. **Character limit**: 16 **Values**: a valid currency value  | [optional] 
**comment** | **String** |  Additional information related to the payment. **Character limit**: 255 **Values**: a string of 255 characters or fewer  | [optional] 
**effective_date** | **Date** |  The date when the payment takes effect. **Character limit**: 29 **Values**: a valid date and time value  | [optional] 
**payment_method_id** | **String** |  The ID of the payment method used for the payment. Required for Create. **Character limit**: 32 **Values**: automatically generated  | [optional] 
**reference_id** | **String** |  The transaction ID returned by the payment gateway. Use this field to reconcile payments between your gateway and Zuora Payments. **Character limit**: 60 **Values**: a string of 60 characters or fewer  | [optional] 
**status** | **String** |  The status of the payment in Zuora. The value depends on the type of payment. **Character limit**: 11 **Values**: one of the following:  -  Electronic payments: &#x60;Processed&#x60;, &#x60;Error&#x60;, &#x60;Voided&#x60;  -  External payments: &#x60;Processed&#x60;, &#x60;Canceled&#x60;  * Update of status can change value from &#x60;Processed&#x60; to &#x60;Canceled&#x60; when the payment type is external.  | [optional] 
**transferred_to_accounting** | **String** |  Indicates if the payment was transferred to an external accounting system. Use this field for integration with accounting systems, such as NetSuite. **Character limit**: 11 **Values**: &#x60;Processing&#x60;, &#x60;Yes&#x60;, &#x60;Error&#x60;, &#x60;Ignore&#x60;  | [optional] 
**type** | **String** |  Indicates if the payment is external or electronic. **Character limit**: 10 **Values**: &#x60;External&#x60;, &#x60;Electronic&#x60;  | [optional] 


