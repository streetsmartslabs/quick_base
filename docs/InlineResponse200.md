# QuickBase::InlineResponse200

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the table. | [optional] 
**id** | **String** | The unique identifier (dbid) of the table. | [optional] 
**_alias** | **String** | The automatically-created table alias for the table. | [optional] 
**description** | **String** | The description of the table, as configured by an application administrator. | [optional] 
**created** | **String** | The time and date when the table was created, in the ISO 8601 time format YYYY-MM-DDThh:mm:ss.sssZ (in UTC time zone). | [optional] 
**updated** | **String** | The time and date when the table schema or data was last updated, in the ISO 8601 time format YYYY-MM-DDThh:mm:ss.sssZ (in UTC time zone). | [optional] 
**next_record_id** | **Integer** | The incremental Record ID that will be used when the next record is created, as determined when the API call was ran. | [optional] 
**next_field_id** | **Integer** | The incremental Field ID that will be used when the next field is created, as determined when the API call was ran. | [optional] 
**default_sort_field_id** | **Integer** | The id of the field that is configured for default sorting. | [optional] 
**default_sort_order** | **String** | The configuration of the default sort order on the table. | [optional] 
**key_field_id** | **Integer** | The id of the field that is configured to be the key on this table, which is usually the Quick Base Record ID. | [optional] 
**single_record_name** | **String** | The builder-configured singular noun of the table. | [optional] 
**plural_record_name** | **String** | The builder-configured plural noun of the table. | [optional] 
**size_limit** | **String** | The size limit for the table. | [optional] 
**space_used** | **String** | The amount of space currently being used by the table. | [optional] 
**space_remaining** | **String** | The amount of space remaining for use by the table. | [optional] 


