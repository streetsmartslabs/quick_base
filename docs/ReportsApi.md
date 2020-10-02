# QuickBase::ReportsApi

All URIs are relative to *https://api.quickbase.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_report**](ReportsApi.md#get_report) | **GET** /reports/{reportId} | Get a report
[**get_table_reports**](ReportsApi.md#get_table_reports) | **GET** /reports | Get reports for a table
[**run_report**](ReportsApi.md#run_report) | **POST** /reports/{reportId}/run | Run a report


# **get_report**
> Hash&lt;String, Object&gt; get_report(report_id, table_id, qb_realm_hostname, authorization, opts)

Get a report

Get the schema (properties) of an individual report.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::ReportsApi.new

report_id = 'report_id_example' # String | The identifier of the report, unique to the table.

table_id = 'table_id_example' # String | The unique identifier of table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Get a report
  result = api_instance.get_report(report_id, table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling ReportsApi->get_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_id** | **String**| The identifier of the report, unique to the table. | 
 **table_id** | **String**| The unique identifier of table. | 
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



# **get_table_reports**
> Array&lt;InlineResponse2001&gt; get_table_reports(table_id, qb_realm_hostname, authorization, opts)

Get reports for a table

Get the schema (properties) of all reports for a table. If the user running the API is an application administrator, the API will also return all personal reports with owner's user id.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::ReportsApi.new

table_id = 'table_id_example' # String | The unique identifier of the table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
}

begin
  #Get reports for a table
  result = api_instance.get_table_reports(table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling ReportsApi->get_table_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **String**| The unique identifier of the table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 

### Return type

[**Array&lt;InlineResponse2001&gt;**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **run_report**
> Hash&lt;String, Object&gt; run_report(report_id, table_id, qb_realm_hostname, authorization, opts)

Run a report

Runs a report, based on an ID and returns the underlying data associated with it. The format of the data will vary based on the report type. Reports that focus on record-level data (table, calendar, etc.) return the individual records. Aggregate reports (summary, chart) will return the summarized information as configured in the report. UI-specific elements are not returned, such as totals, averages and visualizations. Returns data with intelligent pagination based on the approximate size of each record. The metadata object will include the necessary information to iterate over the response and gather more data.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::ReportsApi.new

report_id = 'report_id_example' # String | The identifier of the report, unique to the table.

table_id = 'table_id_example' # String | The identifier of the table for the report.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  skip: 56, # Integer | The number of records to skip. You can set this value when paginating through a set of results.
  top: 56, # Integer | The maximum number of records to return. You can override the default Quick Base pagination to get more or fewer results. If your requested value here exceeds the dynamic maximums, we will return a subset of results and the rest can be gathered in subsequent API calls.
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  generated: nil # Object | 
}

begin
  #Run a report
  result = api_instance.run_report(report_id, table_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling ReportsApi->run_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_id** | **String**| The identifier of the report, unique to the table. | 
 **table_id** | **String**| The identifier of the table for the report. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **skip** | **Integer**| The number of records to skip. You can set this value when paginating through a set of results. | [optional] 
 **top** | **Integer**| The maximum number of records to return. You can override the default Quick Base pagination to get more or fewer results. If your requested value here exceeds the dynamic maximums, we will return a subset of results and the rest can be gathered in subsequent API calls. | [optional] 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **generated** | **Object**|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



