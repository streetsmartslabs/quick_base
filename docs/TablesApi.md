# QuickBase::TablesApi

All URIs are relative to *https://api.quickbase.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_relationship**](TablesApi.md#create_relationship) | **POST** /tables/{tableId}/relationship | Create a relationship
[**create_table**](TablesApi.md#create_table) | **POST** /tables | Create a table
[**delete_relationship**](TablesApi.md#delete_relationship) | **DELETE** /tables/{tableId}/relationship/{relationshipId} | Delete a relationship
[**delete_table**](TablesApi.md#delete_table) | **DELETE** /tables/{tableId} | Delete a table
[**get_app_tables**](TablesApi.md#get_app_tables) | **GET** /tables | Get tables for an app
[**get_relationships**](TablesApi.md#get_relationships) | **GET** /tables/{tableId}/relationships | Get all relationships
[**get_table**](TablesApi.md#get_table) | **GET** /tables/{tableId} | Get a table
[**update_relationship**](TablesApi.md#update_relationship) | **POST** /tables/{tableId}/relationship/{relationshipId} | Update a relationship
[**update_table**](TablesApi.md#update_table) | **POST** /tables/{tableId} | Update a table


# **create_relationship**
> Hash&lt;String, Object&gt; create_relationship(table_id, qb_realm_hostname, authorization, opts)

Create a relationship

Creates a relationship in a table as well as lookup/summary fields. Relationships can only be created for tables within the same app.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::TablesApi.new

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table. This will be the child table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated5.new # Generated5 | 
}

begin
  #Create a relationship
  result = api_instance.create_relationship(table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling TablesApi->create_relationship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier (dbid) of the table. This will be the child table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated5**](Generated5.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_table**
> Hash&lt;String, Object&gt; create_table(app_id, qb_realm_hostname, authorization, opts)

Create a table

Creates a table in an application.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::TablesApi.new

app_id = 'app_id_example' # String | The unique identifier of an app

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated3.new # Generated3 | 
}

begin
  #Create a table
  result = api_instance.create_table(app_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling TablesApi->create_table: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| The unique identifier of an app | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated3**](Generated3.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_relationship**
> Hash&lt;String, Object&gt; delete_relationship(table_id, relationship_id, qb_realm_hostname, authorization, opts)

Delete a relationship

Use this endpoint to delete an entire relationship, including all lookup and summary fields. The reference field in the relationship will not be deleted.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::TablesApi.new

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table. This will be the child table.

relationship_id = 8.14 # Float | The relationship id. This is the field id of the reference field on the child table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Delete a relationship
  result = api_instance.delete_relationship(table_id, relationship_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling TablesApi->delete_relationship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier (dbid) of the table. This will be the child table. | 
 **relationship_id** | **Float**| The relationship id. This is the field id of the reference field on the child table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_table**
> Hash&lt;String, Object&gt; delete_table(table_id, app_id, qb_realm_hostname, authorization, opts)

Delete a table

Deletes a specific table in an application, including all of the data within it.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::TablesApi.new

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table.

app_id = 'app_id_example' # String | The unique identifier of an app

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Delete a table
  result = api_instance.delete_table(table_id, app_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling TablesApi->delete_table: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier (dbid) of the table. | 
 **app_id** | **String**| The unique identifier of an app | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_app_tables**
> Array&lt;InlineResponse200&gt; get_app_tables(app_id, qb_realm_hostname, authorization, opts)

Get tables for an app

Gets a list of all the tables that exist in a specific application. The properties for each table are the same as what is returned in Get table.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::TablesApi.new

app_id = 'app_id_example' # String | The unique identifier of an app

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Get tables for an app
  result = api_instance.get_app_tables(app_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling TablesApi->get_app_tables: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| The unique identifier of an app | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

[**Array&lt;InlineResponse200&gt;**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_relationships**
> Hash&lt;String, Object&gt; get_relationships(table_id, qb_realm_hostname, authorization, opts)

Get all relationships

Get a list of all relationships, and their definitions, for a specific table. Details are provided for both the parent and child sides of relationships within a given application. Limited details are returned for cross-application relationships.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::TablesApi.new

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Get all relationships
  result = api_instance.get_relationships(table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling TablesApi->get_relationships: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier (dbid) of the table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_table**
> Hash&lt;String, Object&gt; get_table(table_id, app_id, qb_realm_hostname, authorization, opts)

Get a table

Gets the properties of an individual table that is part of an application.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::TablesApi.new

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table.

app_id = 'app_id_example' # String | The unique identifier of an app

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Get a table
  result = api_instance.get_table(table_id, app_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling TablesApi->get_table: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier (dbid) of the table. | 
 **app_id** | **String**| The unique identifier of an app | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_relationship**
> Hash&lt;String, Object&gt; update_relationship(table_id, relationship_id, qb_realm_hostname, authorization, opts)

Update a relationship

Use this endpoint to add lookup fields and summary fields to an existing relationship. Updating a relationship will not delete existing lookup/summary fields.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::TablesApi.new

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table. This will be the child table.

relationship_id = 8.14 # Float | The relationship id. This is the field id of the reference field on the child table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated6.new # Generated6 | 
}

begin
  #Update a relationship
  result = api_instance.update_relationship(table_id, relationship_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling TablesApi->update_relationship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier (dbid) of the table. This will be the child table. | 
 **relationship_id** | **Float**| The relationship id. This is the field id of the reference field on the child table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated6**](Generated6.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_table**
> Hash&lt;String, Object&gt; update_table(table_id, app_id, qb_realm_hostname, authorization, opts)

Update a table

Updates the main properties of a specific table. Any properties of the table that you do not specify in the request body will remain unchanged.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::TablesApi.new

table_id = 'table_id_example' # String | The unique identifier (dbid) of the table.

app_id = 'app_id_example' # String | The unique identifier of an app

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated4.new # Generated4 | 
}

begin
  #Update a table
  result = api_instance.update_table(table_id, app_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling TablesApi->update_table: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier (dbid) of the table. | 
 **app_id** | **String**| The unique identifier of an app | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated4**](Generated4.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



