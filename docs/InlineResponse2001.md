# QuickBase::InlineResponse2001

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The identifier of the report, unique to the table. | [optional] 
**name** | **String** | The configured name of the report. | [optional] 
**type** | **String** | The type of report in Quick Base (e.g., chart). | [optional] 
**description** | **String** | The configured description of a report. | [optional] 
**owner_id** | **Integer** | Optional, showed only for personal reports. The user ID of report owner. | [optional] 
**query** | [**ReportsQuery**](ReportsQuery.md) |  | [optional] 
**properties** | **Object** | A list of properties specific to the report type. To see a detailed description of the properties for each report type, See [Report Types.](../reportTypes) | [optional] 
**used_last** | **String** | The instant at which a report was last used. | [optional] 
**used_count** | **Integer** | The number of times a report has been used. | [optional] 


