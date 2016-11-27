# SwaggerClient::GETAccountingPeriodWithoutSuccessType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_by** | **String** | ID of the user who created the accounting period.  | [optional] 
**created_on** | **DateTime** | Date and time when the accounting period was created.  | [optional] 
**custom_field__c** | **String** | Any custom fields defined for this object.  | [optional] 
**end_date** | **Date** | The end date of the accounting period.  | [optional] 
**file_ids** | [**Array&lt;GETAccountingPeriodFileIdsType&gt;**](GETAccountingPeriodFileIdsType.md) | File IDs of the reports available for the accounting period. You can retrieve the reports by specifying the file ID in a [Get Files](https://knowledgecenter.zuora.com/DC_Developers/REST_API/B_REST_API_reference/Get_Files) REST API call.  | [optional] 
**fiscal_year** | **String** | Fiscal year of the accounting period.  | [optional] 
**fiscal_quarter** | **Integer** |  | [optional] 
**id** | **String** | ID of the accounting period.  | [optional] 
**name** | **String** | Name of the accounting period.  | [optional] 
**notes** | **String** | Any optional notes about the accounting period.  | [optional] 
**run_trial_balance_end** | **DateTime** | Date and time that the trial balance was completed. If the trial balance status is &#x60;Pending&#x60;, &#x60;Processing&#x60;, or &#x60;Error&#x60;, this field is &#x60;null&#x60;.  | [optional] 
**run_trial_balance_error_message** | **String** | If trial balance status is Error, an error message is returned in this field.  | [optional] 
**run_trial_balance_start** | **DateTime** | Date and time that the trial balance was run. If the trial balance status is &#x60;Pending&#x60;, this field is &#x60;null&#x60;.  | [optional] 
**run_trial_balance_status** | **String** | Status of the trial balance for the accounting period. Possible values:  * &#x60;Pending&#x60; * &#x60;Processing&#x60; * &#x60;Completed&#x60; * &#x60;Error&#x60;  | [optional] 
**start_date** | **Date** | The start date of the accounting period.  | [optional] 
**status** | **String** | Status of the accounting period. Possible values:  * &#x60;Open&#x60; * &#x60;PendingClose&#x60; * &#x60;Closed&#x60;  | [optional] 
**updated_by** | **String** | D of the user who last updated the accounting period.  | [optional] 
**updated_on** | **DateTime** | Date and time when the accounting period was last updated.  | [optional] 


