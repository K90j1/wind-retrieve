# SwaggerClient::ProxyCreateAccountingCode

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gl_account_name** | **String** |  The account name in general ledger (GL) that corresponds to accounting code. **Character limit**: 255 **Z-Finance Required:** Yes  | [optional] 
**gl_account_number** | **String** |  The account number in the GL that corresponds to the accounting code. **Character limit**: 50 **Z-Finance Required:** Yes  | [optional] 
**name** | **String** |  The name of the accounting code. **Character limit**: 100 **Z-Finance Required:** No  | 
**notes** | **String** |  Any note about the accounting code. **Character limit:** 2000 **Z-Finance Required**: No  | [optional] 
**type** | **String** |  The accounting code type. Possible values:  - AccountsReceivable - Cash - OtherAssets - CustomerCashOnAccount - DeferredRevenue - SalesTaxPayable - OtherLiabilities - SalesRevenue - SalesDiscounts - OtherRevenue - OtherEquity - BadDebt - OtherExpenses **Character limit**: N/A **Z-Finance Required:** No  | 


