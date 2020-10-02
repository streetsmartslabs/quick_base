# QuickBase::Generated12

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**options** | [**RecordsqueryOptions**](RecordsqueryOptions.md) |  | [optional] 
**where** | **String** | The filter, using the Quick Base query language, which determines the records to return. | [optional] 
**group_by** | [**Array&lt;RecordsqueryGroupBy&gt;**](RecordsqueryGroupBy.md) | An array that contains the fields to group the records by. | [optional] 
**sort_by** | **Object** | By default, queries will be sorted by the given sort fields or the default sort if the query does not provide any. Set to false to avoid sorting when the order of the data returned is not important. Returning data without sorting can improve performance. | [optional] 
**select** | [**Array&lt;null&gt;**](.md) | An array of field ids for the fields that should be returned in the response. If empty, the default columns on the table will be returned. | [optional] 
**from** | **String** | The table identifier. | 


