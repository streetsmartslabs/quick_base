# QuickBase::AuthApi

All URIs are relative to *https://api.quickbase.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_temp_token_dbid**](AuthApi.md#get_temp_token_dbid) | **GET** /auth/temporary/{dbid} | Get a temporary token for a dbid


# **get_temp_token_dbid**
> Hash&lt;String, Object&gt; get_temp_token_dbid(dbid, qb_realm_hostname, opts)

Get a temporary token for a dbid

Use this endpoint to get a temporary authorization token, scoped to either an app or a table. You can then use this token to make other API calls (see [authorization](../auth)).  This token expires in 5 minutes.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::AuthApi.new

dbid = 'dbid_example' # String | The unique identifier of an app or table.

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

opts = { 
  user_agent: 'user_agent_example', # String | This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  qb_app_token: 'qb_app_token_example' # String | Your Quick Base app token
}

begin
  #Get a temporary token for a dbid
  result = api_instance.get_temp_token_dbid(dbid, qb_realm_hostname, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling AuthApi->get_temp_token_dbid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dbid** | **String**| The unique identifier of an app or table. | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **user_agent** | **String**| This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities. | [optional] 
 **qb_app_token** | **String**| Your Quick Base app token | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



