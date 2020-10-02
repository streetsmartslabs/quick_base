# QuickBase::AppsApi

All URIs are relative to *https://api.quickbase.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_app**](AppsApi.md#create_app) | **POST** /apps | Create an app
[**delete_app**](AppsApi.md#delete_app) | **DELETE** /apps/{appId} | Delete an app
[**get_app**](AppsApi.md#get_app) | **GET** /apps/{appId} | Get an app
[**update_app**](AppsApi.md#update_app) | **POST** /apps/{appId} | Update an app


# **create_app**
> Hash&lt;String, Object&gt; create_app(qb_realm_hostname, authorization, opts)

Create an app

Creates an application in an account. You must have application creation rights in the respective account. Main properties and application variables can be set with this API.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::AppsApi.new

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting.
  generated: QuickBase::Generated.new # Generated | 
}

begin
  #Create an app
  result = api_instance.create_app(qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling AppsApi->create_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting. | [optional] 
 **generated** | [**Generated**](Generated.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_app**
> Hash&lt;String, Object&gt; delete_app(app_id, qb_realm_hostname, authorization, opts)

Delete an app

Deletes an entire application, including all of the tables and data.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::AppsApi.new

app_id = 'app_id_example' # String | The unique identifier of an app

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting.
  generated: QuickBase::Generated2.new # Generated2 | 
}

begin
  #Delete an app
  result = api_instance.delete_app(app_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling AppsApi->delete_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| The unique identifier of an app | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting. | [optional] 
 **generated** | [**Generated2**](Generated2.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_app**
> Hash&lt;String, Object&gt; get_app(app_id, qb_realm_hostname, authorization, opts)

Get an app

Returns the main properties of an application, including application variables.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::AppsApi.new

app_id = 'app_id_example' # String | The unique identifier of an app

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example' # String | Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting.
}

begin
  #Get an app
  result = api_instance.get_app(app_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling AppsApi->get_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| The unique identifier of an app | 
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



# **update_app**
> Hash&lt;String, Object&gt; update_app(app_id, qb_realm_hostname, authorization, opts)

Update an app

Updates the main properties and/or application variables for a specific application. Any properties of the app that you do not specify in the request body will remain unchanged.

### Example
```ruby
# load the gem
require 'quick_base'

api_instance = QuickBase::AppsApi.new

app_id = 'app_id_example' # String | The unique identifier of an app

qb_realm_hostname = 'qb_realm_hostname_example' # String | Your Quick Base domain, for example demo.quickbase.com

authorization = 'authorization_example' # String | The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).

opts = { 
  user_agent: 'user_agent_example', # String | Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting.
  generated: QuickBase::Generated1.new # Generated1 | 
}

begin
  #Update an app
  result = api_instance.update_app(app_id, qb_realm_hostname, authorization, opts)
  p result
rescue QuickBase::ApiError => e
  puts "Exception when calling AppsApi->update_app: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **String**| The unique identifier of an app | 
 **qb_realm_hostname** | **String**| Your Quick Base domain, for example demo.quickbase.com | 
 **authorization** | **String**| The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth). | 
 **user_agent** | **String**| Information is entered by the person or utility invoking the API. Choose between the default in your toolkit or custom create it. Being as descriptive as possible will help in identification and troubleshooting. | [optional] 
 **generated** | [**Generated1**](Generated1.md)|  | [optional] 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



