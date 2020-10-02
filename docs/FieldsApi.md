# QuickBase::FieldsApi

All URIs are relative to *https://api.quickbase.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_field**](FieldsApi.md#create_field) | **POST** /fields | Create a field
[**delete_fields**](FieldsApi.md#delete_fields) | **DELETE** /fields | Delete field(s)
[**get_field**](FieldsApi.md#get_field) | **GET** /fields/{fieldId} | Get field
[**get_field_usage**](FieldsApi.md#get_field_usage) | **GET** /fields/usage/{fieldId} | Get usage for a field
[**get_fields**](FieldsApi.md#get_fields) | **GET** /fields | Get fields for a table
[**get_fields_usage**](FieldsApi.md#get_fields_usage) | **GET** /fields/usage | Get usage for all fields
[**update_field**](FieldsApi.md#update_field) | **POST** /fields/{fieldId} | Update a field


# **create_field**
> Hash&lt;String, Object&gt; create_field(table_id, qb_realm_hostname, authorization, opts)

Create a field

Creates a field within a table, including the custom permissions of that field.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::FieldsApi.new

table_id = 'table_id_example' # String | The unique identifier of the table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated7.new # Generated7 | 
}

begin
  #Create a field
  result = api_instance.create_field(table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling FieldsApi->create_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier of the table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated7**](Generated7.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_fields**
> Hash&lt;String, Object&gt; delete_fields(table_id, qb_realm_hostname, authorization, opts)

Delete field(s)

Deletes one or many fields in a table, based on field id. This will also permanently delete any data or calculations in that field.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::FieldsApi.new

table_id = 'table_id_example' # String | The unique identifier of the table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated8.new # Generated8 | 
}

begin
  #Delete field(s)
  result = api_instance.delete_fields(table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling FieldsApi->delete_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier of the table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated8**](Generated8.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_field**
> Hash&lt;String, Object&gt; get_field(field_id, table_id, qb_realm_hostname, authorization, opts)

Get field

Gets the properties of an individual field, based on field id.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::FieldsApi.new

field_id = 56 # Integer | The unique identifier (fid) of the field.

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  include_field_perms: false, # BOOLEAN | Set to 'true' if you'd like to get back the custom permissions for the field(s).
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Get field
  result = api_instance.get_field(field_id, table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling FieldsApi->get_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field_id** | **Integer**| The unique identifier (fid) of the field. | 
 **table_id** | **String**| The unique identifier (dbid) of the table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **include_field_perms** | **BOOLEAN**| Set to &#39;true&#39; if you&#39;d like to get back the custom permissions for the field(s). | [optional] [default to false]
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_field_usage**
> Array&lt;InlineResponse2003&gt; get_field_usage(field_id, table_id, qb_realm_hostname, authorization, opts)

Get usage for a field

Get a single fields usage statistics. This is a summary of the information that can be found in the usage table of field properties.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::FieldsApi.new

field_id = 56 # Integer | The unique identifier (fid) of the field.

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Get usage for a field
  result = api_instance.get_field_usage(field_id, table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling FieldsApi->get_field_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field_id** | **Integer**| The unique identifier (fid) of the field. | 
 **table_id** | **String**| The unique identifier (dbid) of the table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

[**Array&lt;InlineResponse2003&gt;**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_fields**
> Array&lt;InlineResponse2002&gt; get_fields(table_id, qb_realm_hostname, authorization, opts)

Get fields for a table

Gets the properties for all fields in a specific table. The properties for each field are the same as in Get field.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::FieldsApi.new

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  include_field_perms: false, # BOOLEAN | Set to 'true' if you'd like to get back the custom permissions for the field(s).
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Get fields for a table
  result = api_instance.get_fields(table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling FieldsApi->get_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier (dbid) of the table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **include_field_perms** | **BOOLEAN**| Set to &#39;true&#39; if you&#39;d like to get back the custom permissions for the field(s). | [optional] [default to false]
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

[**Array&lt;InlineResponse2002&gt;**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_fields_usage**
> Array&lt;InlineResponse2003&gt; get_fields_usage(table_id, qb_realm_hostname, authorization, opts)

Get usage for all fields

Get all the field usage statistics for a table. This is a summary of the information that can be found in the usage table of field properties.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::FieldsApi.new

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  skip: 56, # Integer | The number of fields to skip from the list.
  top: 56, # Integer | The maximum number of fields to return.
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Get usage for all fields
  result = api_instance.get_fields_usage(table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling FieldsApi->get_fields_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier (dbid) of the table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **skip** | **Integer**| The number of fields to skip from the list. | [optional] 
 **top** | **Integer**| The maximum number of fields to return. | [optional] 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

[**Array&lt;InlineResponse2003&gt;**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_field**
> Hash&lt;String, Object&gt; update_field(field_id, table_id, qb_realm_hostname, authorization, opts)

Update a field

Updates the properties and custom permissions of a field. The attempt to update certain properties might cause existing data to no longer obey the field’s new properties and may be rejected. See the descriptions of required, unique, and choices, below, for specific situations. Any properties of the field that you do not specify in the request body will remain unchanged.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::FieldsApi.new

field_id = 56 # Integer | The unique identifier (fid) of the field.

table_id = 'table_id_example' # String | The unique identifier of the table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated9.new # Generated9 | 
}

begin
  #Update a field
  result = api_instance.update_field(field_id, table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling FieldsApi->update_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field_id** | **Integer**| The unique identifier (fid) of the field. | 
 **table_id** | **String**| The unique identifier of the table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated9**](Generated9.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



