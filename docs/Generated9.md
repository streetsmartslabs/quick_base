# QuickBase::Generated9

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**audited** | **BOOLEAN** | Indicates if the field is being tracked as part of Quick Base Audit Logs. You can only set this property to \&quot;true\&quot; if the app has audit logs enabled. See Enable data change logs under [Quick Base Audit Logs](https://help.quickbase.com/user-assistance/audit_logs.html). | [optional] 
**field_help** | **String** | The configured help text shown to users within the product. | [optional] 
**bold** | **BOOLEAN** | Indicates if the field is configured to display in bold in the product. | [optional] 
**required** | **BOOLEAN** | Indicates if the field is required (i.e. if every record must have a non-null value in this field). If you attempt to change a field from not-required to required, and the table currently contains records that have null values in that field, you will get an error indicating that there are null values of the field. In this case you need to find and update those records with null values of the field before changing the field to required. | [optional] 
**properties** | [**FieldsfieldIdProperties**](FieldsfieldIdProperties.md) |  | [optional] 
**appears_by_default** | **BOOLEAN** | Indicates if the field is marked as a default in reports. | [optional] 
**unique** | **BOOLEAN** | Indicates if every record in the table must contain a unique value of this field. If you attempt to change a field from not-unique to unique, and the table currently contains records with the same value of this field, you will get an error. In this case you need to find and update those records with duplicate values of the field before changing the field to unique. | [optional] 
**permissions** | [**Array&lt;FieldsPermissions&gt;**](FieldsPermissions.md) | Field Permissions for different roles. | [optional] 
**add_to_forms** | **BOOLEAN** | Whether the field you are adding should appear on forms. | [optional] 
**label** | **String** | The label (name) of the field. | [optional] 
**find_enabled** | **BOOLEAN** | Indicates if the field is marked as searchable. | [optional] 
**no_wrap** | **BOOLEAN** | Indicates if the field is configured to not wrap when displayed in the product. | [optional] 


