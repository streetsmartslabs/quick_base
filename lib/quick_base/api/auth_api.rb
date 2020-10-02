=begin
#Quick Base API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'uri'

module QuickBase
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a temporary token for a dbid
    # Use this endpoint to get a temporary authorization token, scoped to either an app or a table. You can then use this token to make other API calls (see [authorization](../auth)).  This token expires in 5 minutes.
    # @param dbid The unique identifier of an app or table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [String] :qb_app_token Your Quick Base app token
    # @return [Hash<String, Object>]
    def get_temp_token_dbid(dbid, qb_realm_hostname, opts = {})
      data, _status_code, _headers = get_temp_token_dbid_with_http_info(dbid, qb_realm_hostname, opts)
      data
    end

    # Get a temporary token for a dbid
    # Use this endpoint to get a temporary authorization token, scoped to either an app or a table. You can then use this token to make other API calls (see [authorization](../auth)).  This token expires in 5 minutes.
    # @param dbid The unique identifier of an app or table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [String] :qb_app_token Your Quick Base app token
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_temp_token_dbid_with_http_info(dbid, qb_realm_hostname, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.get_temp_token_dbid ...'
      end
      # verify the required parameter 'dbid' is set
      if @api_client.config.client_side_validation && dbid.nil?
        fail ArgumentError, "Missing the required parameter 'dbid' when calling AuthApi.get_temp_token_dbid"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling AuthApi.get_temp_token_dbid"
      end
      # resource path
      local_var_path = '/auth/temporary/{dbid}'.sub('{' + 'dbid' + '}', dbid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      header_params[:'QB-Realm-Hostname'] = qb_realm_hostname
      header_params[:'User-Agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?
      header_params[:'QB-App-Token'] = opts[:'qb_app_token'] if !opts[:'qb_app_token'].nil?

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
        @api_client.config.logger.debug "API called: AuthApi#get_temp_token_dbid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
