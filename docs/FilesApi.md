# QuickBase::FilesApi

All URIs are relative to *https://api.quickbase.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_file**](FilesApi.md#delete_file) | **DELETE** /files/{tableId}/{recordId}/{fieldId}/{versionNumber} | Delete file
[**download_file**](FilesApi.md#download_file) | **GET** /files/{tableId}/{recordId}/{fieldId}/{versionNumber} | Download file


# **delete_file**
> Hash&lt;String, Object&gt; delete_file(table_id, record_id, field_id, version_number, qb_realm_hostname, authorization, opts)

Delete file

Deletes one file attachment version. Meta-data about files can be retrieved from the /records and /reports endpoints, where applicable. Use those endpoints to get the necessary information to delete file versions.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::FilesApi.new

table_id = 'table_id_example' # String | The unique identifier of the table.

record_id = 56 # Integer | The unique identifier of the record.

field_id = 56 # Integer | The unique identifier of the field.

version_number = 56 # Integer | The file attachment version number.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting.
}

begin
  #Delete file
  result = api_instance.delete_file(table_id, record_id, field_id, version_number, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling FilesApi->delete_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier of the table. | 
 **record_id** | **Integer**| The unique identifier of the record. | 
 **field_id** | **Integer**| The unique identifier of the field. | 
 **version_number** | **Integer**| The file attachment version number. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting. | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **download_file**
> Object download_file(table_id, record_id, field_id, version_number, qb_realm_hostname, authorization, opts)

Download file

Downloads the file attachment, with the file attachment content encoded in base64 format. The API response returns the file name in the `Content-Disposition` header. Meta-data about files can be retrieved from the /records and /reports endpoints, where applicable. Use those endpoints to get the necessary information to fetch files.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::FilesApi.new

table_id = 'table_id_example' # String | The unique identifier of the table.

record_id = 56 # Integer | The unique identifier of the record.

field_id = 56 # Integer | The unique identifier of the field.

version_number = 56 # Integer | The file attachment version number.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting.
}

begin
  #Download file
  result = api_instance.download_file(table_id, record_id, field_id, version_number, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling FilesApi->download_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier of the table. | 
 **record_id** | **Integer**| The unique identifier of the record. | 
 **field_id** | **Integer**| The unique identifier of the field. | 
 **version_number** | **Integer**| The file attachment version number. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



