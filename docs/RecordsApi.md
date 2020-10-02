# QuickBase::RecordsApi

All URIs are relative to *https://api.quickbase.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_records**](RecordsApi.md#delete_records) | **DELETE** /records | Delete record(s)
[**run_query**](RecordsApi.md#run_query) | **POST** /records/query | Query for data
[**upsert**](RecordsApi.md#upsert) | **POST** /records | Insert/Update record(s)


# **delete_records**
> Hash&lt;String, Object&gt; delete_records(qb_realm_hostname, authorization, opts)

Delete record(s)

Deletes record(s) in a table based on a query. Alternatively, all records in the table can be deleted.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::RecordsApi.new

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated11.new # Generated11 | 
}

begin
  #Delete record(s)
  result = api_instance.delete_records(qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling RecordsApi->delete_records: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated11**](Generated11.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **run_query**
> Hash&lt;String, Object&gt; run_query(qb_realm_hostname, authorization, opts)

Query for data

Pass in a query in the [Quick Base query language](https://help.quickbase.com/api-guide/componentsquery.html). Returns record data with intelligent pagination based on the approximate size of each record. The metadata object will include the necessary information to iterate over the response and gather more data.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::RecordsApi.new

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated12.new # Generated12 | 
}

begin
  #Query for data
  result = api_instance.run_query(qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling RecordsApi->run_query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated12**](Generated12.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **upsert**
> Hash&lt;String, Object&gt; upsert(qb_realm_hostname, authorization, opts)

Insert/Update record(s)

Insert and/or update record(s) in a table. In this single API call, inserts and updates can be submitted. Update can use the key field on the table, or any other supported unique field. Refer to the [Field types page](../fieldInfo) for more information about how each field type should be formatted. This operation allows for incremental processing of successful records, even when some of the records fail.   **Note:** This endpoint supports a maximum payload size of 10MB.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::RecordsApi.new

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: QuickBase::Generated10.new # Generated10 | 
}

begin
  #Insert/Update record(s)
  result = api_instance.upsert(qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling RecordsApi->upsert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | [**Generated10**](Generated10.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



