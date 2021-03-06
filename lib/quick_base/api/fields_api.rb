=begin
#Quick Base API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'uri'

module QuickBase
  class FieldsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a field
    # Creates a field within a table, including the custom permissions of that field.
    # @param table_id The unique identifier of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [Generated7] :generated 
    # @return [Hash<String, Object>]
    def create_field(table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = create_field_with_http_info(table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Create a field
    # Creates a field within a table, including the custom permissions of that field.
    # @param table_id The unique identifier of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [Generated7] :generated 
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def create_field_with_http_info(table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.create_field ...'
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling FieldsApi.create_field"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling FieldsApi.create_field"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling FieldsApi.create_field"
      end
      # resource path
      local_var_path = '/fields'

      # query parameters
      query_params = {}
      query_params[:'tableId'] = table_id

      # header parameters
      header_params = {}
      header_params[:'QB-Realm-Hostname'] = qb_realm_hostname
      header_params[:'Authorization'] = authorization
      header_params[:'User-Agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'generated'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#create_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete field(s)
    # Deletes one or many fields in a table, based on field id. This will also permanently delete any data or calculations in that field.
    # @param table_id The unique identifier of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [Generated8] :generated 
    # @return [Hash<String, Object>]
    def delete_fields(table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = delete_fields_with_http_info(table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Delete field(s)
    # Deletes one or many fields in a table, based on field id. This will also permanently delete any data or calculations in that field.
    # @param table_id The unique identifier of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [Generated8] :generated 
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def delete_fields_with_http_info(table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.delete_fields ...'
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling FieldsApi.delete_fields"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling FieldsApi.delete_fields"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling FieldsApi.delete_fields"
      end
      # resource path
      local_var_path = '/fields'

      # query parameters
      query_params = {}
      query_params[:'tableId'] = table_id

      # header parameters
      header_params = {}
      header_params[:'QB-Realm-Hostname'] = qb_realm_hostname
      header_params[:'Authorization'] = authorization
      header_params[:'User-Agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'generated'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#delete_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get field
    # Gets the properties of an individual field, based on field id.
    # @param field_id The unique identifier (fid) of the field.
    # @param table_id The unique identifier (dbid) of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_field_perms Set to &#39;true&#39; if you&#39;d like to get back the custom permissions for the field(s). (default to false)
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Hash<String, Object>]
    def get_field(field_id, table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = get_field_with_http_info(field_id, table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Get field
    # Gets the properties of an individual field, based on field id.
    # @param field_id The unique identifier (fid) of the field.
    # @param table_id The unique identifier (dbid) of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_field_perms Set to &#39;true&#39; if you&#39;d like to get back the custom permissions for the field(s).
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_field_with_http_info(field_id, table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.get_field ...'
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.get_field"
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling FieldsApi.get_field"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling FieldsApi.get_field"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling FieldsApi.get_field"
      end
      # resource path
      local_var_path = '/fields/{fieldId}'.sub('{' + 'fieldId' + '}', field_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'tableId'] = table_id
      query_params[:'includeFieldPerms'] = opts[:'include_field_perms'] if !opts[:'include_field_perms'].nil?

      # header parameters
      header_params = {}
      header_params[:'QB-Realm-Hostname'] = qb_realm_hostname
      header_params[:'Authorization'] = authorization
      header_params[:'User-Agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#get_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get usage for a field
    # Get a single fields usage statistics. This is a summary of the information that can be found in the usage table of field properties.
    # @param field_id The unique identifier (fid) of the field.
    # @param table_id The unique identifier (dbid) of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<InlineResponse2003>]
    def get_field_usage(field_id, table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = get_field_usage_with_http_info(field_id, table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Get usage for a field
    # Get a single fields usage statistics. This is a summary of the information that can be found in the usage table of field properties.
    # @param field_id The unique identifier (fid) of the field.
    # @param table_id The unique identifier (dbid) of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<(Array<InlineResponse2003>, Fixnum, Hash)>] Array<InlineResponse2003> data, response status code and response headers
    def get_field_usage_with_http_info(field_id, table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.get_field_usage ...'
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.get_field_usage"
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling FieldsApi.get_field_usage"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling FieldsApi.get_field_usage"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling FieldsApi.get_field_usage"
      end
      # resource path
      local_var_path = '/fields/usage/{fieldId}'.sub('{' + 'fieldId' + '}', field_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'tableId'] = table_id

      # header parameters
      header_params = {}
      header_params[:'QB-Realm-Hostname'] = qb_realm_hostname
      header_params[:'Authorization'] = authorization
      header_params[:'User-Agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<InlineResponse2003>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#get_field_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get fields for a table
    # Gets the properties for all fields in a specific table. The properties for each field are the same as in Get field.
    # @param table_id The unique identifier (dbid) of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_field_perms Set to &#39;true&#39; if you&#39;d like to get back the custom permissions for the field(s). (default to false)
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<InlineResponse2002>]
    def get_fields(table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = get_fields_with_http_info(table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Get fields for a table
    # Gets the properties for all fields in a specific table. The properties for each field are the same as in Get field.
    # @param table_id The unique identifier (dbid) of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_field_perms Set to &#39;true&#39; if you&#39;d like to get back the custom permissions for the field(s).
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<(Array<InlineResponse2002>, Fixnum, Hash)>] Array<InlineResponse2002> data, response status code and response headers
    def get_fields_with_http_info(table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.get_fields ...'
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling FieldsApi.get_fields"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling FieldsApi.get_fields"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling FieldsApi.get_fields"
      end
      # resource path
      local_var_path = '/fields'

      # query parameters
      query_params = {}
      query_params[:'tableId'] = table_id
      query_params[:'includeFieldPerms'] = opts[:'include_field_perms'] if !opts[:'include_field_perms'].nil?

      # header parameters
      header_params = {}
      header_params[:'QB-Realm-Hostname'] = qb_realm_hostname
      header_params[:'Authorization'] = authorization
      header_params[:'User-Agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<InlineResponse2002>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#get_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get usage for all fields
    # Get all the field usage statistics for a table. This is a summary of the information that can be found in the usage table of field properties.
    # @param table_id The unique identifier (dbid) of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip The number of fields to skip from the list.
    # @option opts [Integer] :top The maximum number of fields to return.
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<InlineResponse2003>]
    def get_fields_usage(table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = get_fields_usage_with_http_info(table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Get usage for all fields
    # Get all the field usage statistics for a table. This is a summary of the information that can be found in the usage table of field properties.
    # @param table_id The unique identifier (dbid) of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip The number of fields to skip from the list.
    # @option opts [Integer] :top The maximum number of fields to return.
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<(Array<InlineResponse2003>, Fixnum, Hash)>] Array<InlineResponse2003> data, response status code and response headers
    def get_fields_usage_with_http_info(table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.get_fields_usage ...'
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling FieldsApi.get_fields_usage"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling FieldsApi.get_fields_usage"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling FieldsApi.get_fields_usage"
      end
      # resource path
      local_var_path = '/fields/usage'

      # query parameters
      query_params = {}
      query_params[:'tableId'] = table_id
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'top'] = opts[:'top'] if !opts[:'top'].nil?

      # header parameters
      header_params = {}
      header_params[:'QB-Realm-Hostname'] = qb_realm_hostname
      header_params[:'Authorization'] = authorization
      header_params[:'User-Agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<InlineResponse2003>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#get_fields_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a field
    # Updates the properties and custom permissions of a field. The attempt to update certain properties might cause existing data to no longer obey the field’s new properties and may be rejected. See the descriptions of required, unique, and choices, below, for specific situations. Any properties of the field that you do not specify in the request body will remain unchanged.
    # @param field_id The unique identifier (fid) of the field.
    # @param table_id The unique identifier of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [Generated9] :generated 
    # @return [Hash<String, Object>]
    def update_field(field_id, table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = update_field_with_http_info(field_id, table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Update a field
    # Updates the properties and custom permissions of a field. The attempt to update certain properties might cause existing data to no longer obey the field’s new properties and may be rejected. See the descriptions of required, unique, and choices, below, for specific situations. Any properties of the field that you do not specify in the request body will remain unchanged.
    # @param field_id The unique identifier (fid) of the field.
    # @param table_id The unique identifier of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [Generated9] :generated 
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def update_field_with_http_info(field_id, table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.update_field ...'
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.update_field"
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling FieldsApi.update_field"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling FieldsApi.update_field"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling FieldsApi.update_field"
      end
      # resource path
      local_var_path = '/fields/{fieldId}'.sub('{' + 'fieldId' + '}', field_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'tableId'] = table_id

      # header parameters
      header_params = {}
      header_params[:'QB-Realm-Hostname'] = qb_realm_hostname
      header_params[:'Authorization'] = authorization
      header_params[:'User-Agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'generated'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#update_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
