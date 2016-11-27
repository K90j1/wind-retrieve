# SwaggerClient::GETRevenueEventDetailType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | An account ID.  | [optional] 
**created_on** | **DateTime** | The date when the record was created in YYYY-MM-DD HH:MM:SS format.  | [optional] 
**currency** | **String** | The type of currency used.   | [optional] 
**custom_field__c** | **String** | Any custom fields defined for this object.  | [optional] 
**event_type** | **String** | Label of the revenue event type. Revenue event type labels can be duplicated. You can configure your revenue event type labels by navigating to **Settings &gt; Z-Finance Settings &gt; Configure Revenue Event Types** in the Zuora UI. The default revenue event types are:    * Invoice Posted   * Invoice Item Adjustment Created   * Invoice Canceled   * Invoice Item Adjustment Canceled   * Revenue Distributed  | [optional] 
**notes** | **String** | Additional information about this record.  | [optional] 
**number** | **String** | The revenue event number created when a revenue event occurs.  | [optional] 
**recognition_end** | **Date** | The end date of a recognition period in YYYY-MM-DD format.   The maximum difference of the recognitionStart and recognitionEnd date fields is equal to 250 multiplied by the length of an accounting period.  | [optional] 
**recognition_start** | **Date** | The start date of a recognition period in YYYY-MM-DD format.  | [optional] 
**revenue_items** | [**Array&lt;GETRevenueItemType&gt;**](GETRevenueItemType.md) | Revenue items are listed in ascending order by the accounting period start date.  | [optional] 
**subscription_charge_id** | **String** | The original subscription charge ID.  | [optional] 
**subscription_id** | **String** | The original subscription ID.  | [optional] 
**success** | **BOOLEAN** | Returns &#x60;true&#x60; if the request was processed successfully.  | [optional] 


