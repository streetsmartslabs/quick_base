=begin
#Quick Base API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'uri'

module QuickBase
  class ReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a report
    # Get the schema (properties) of an individual report.
    # @param report_id The identifier of the report, unique to the table.
    # @param table_id The unique identifier of table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Hash<String, Object>]
    def get_report(report_id, table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = get_report_with_http_info(report_id, table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Get a report
    # Get the schema (properties) of an individual report.
    # @param report_id The identifier of the report, unique to the table.
    # @param table_id The unique identifier of table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_report_with_http_info(report_id, table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_report ...'
      end
      # verify the required parameter 'report_id' is set
      if @api_client.config.client_side_validation && report_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_id' when calling ReportsApi.get_report"
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling ReportsApi.get_report"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling ReportsApi.get_report"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ReportsApi.get_report"
      end
      # resource path
      local_var_path = '/reports/{reportId}'.sub('{' + 'reportId' + '}', report_id.to_s)

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
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get reports for a table
    # Get the schema (properties) of all reports for a table. If the user running the API is an application administrator, the API will also return all personal reports with owner's user id.
    # @param table_id The unique identifier of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<InlineResponse2001>]
    def get_table_reports(table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = get_table_reports_with_http_info(table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Get reports for a table
    # Get the schema (properties) of all reports for a table. If the user running the API is an application administrator, the API will also return all personal reports with owner&#39;s user id.
    # @param table_id The unique identifier of the table.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @return [Array<(Array<InlineResponse2001>, Fixnum, Hash)>] Array<InlineResponse2001> data, response status code and response headers
    def get_table_reports_with_http_info(table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_table_reports ...'
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling ReportsApi.get_table_reports"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling ReportsApi.get_table_reports"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ReportsApi.get_table_reports"
      end
      # resource path
      local_var_path = '/reports'

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
        :return_type => 'Array<InlineResponse2001>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_table_reports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Run a report
    # Runs a report, based on an ID and returns the underlying data associated with it. The format of the data will vary based on the report type. Reports that focus on record-level data (table, calendar, etc.) return the individual records. Aggregate reports (summary, chart) will return the summarized information as configured in the report. UI-specific elements are not returned, such as totals, averages and visualizations. Returns data with intelligent pagination based on the approximate size of each record. The metadata object will include the necessary information to iterate over the response and gather more data.
    # @param report_id The identifier of the report, unique to the table.
    # @param table_id The identifier of the table for the report.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip The number of records to skip. You can set this value when paginating through a set of results.
    # @option opts [Integer] :top The maximum number of records to return. You can override the default Quick Base pagination to get more or fewer results. If your requested value here exceeds the dynamic maximums, we will return a subset of results and the rest can be gathered in subsequent API calls.
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [Object] :generated 
    # @return [Hash<String, Object>]
    def run_report(report_id, table_id, qb_realm_hostname, authorization, opts = {})
      data, _status_code, _headers = run_report_with_http_info(report_id, table_id, qb_realm_hostname, authorization, opts)
      data
    end

    # Run a report
    # Runs a report, based on an ID and returns the underlying data associated with it. The format of the data will vary based on the report type. Reports that focus on record-level data (table, calendar, etc.) return the individual records. Aggregate reports (summary, chart) will return the summarized information as configured in the report. UI-specific elements are not returned, such as totals, averages and visualizations. Returns data with intelligent pagination based on the approximate size of each record. The metadata object will include the necessary information to iterate over the response and gather more data.
    # @param report_id The identifier of the report, unique to the table.
    # @param table_id The identifier of the table for the report.
    # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
    # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip The number of records to skip. You can set this value when paginating through a set of results.
    # @option opts [Integer] :top The maximum number of records to return. You can override the default Quick Base pagination to get more or fewer results. If your requested value here exceeds the dynamic maximums, we will return a subset of results and the rest can be gathered in subsequent API calls.
    # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
    # @option opts [Object] :generated 
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def run_report_with_http_info(report_id, table_id, qb_realm_hostname, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.run_report ...'
      end
      # verify the required parameter 'report_id' is set
      if @api_client.config.client_side_validation && report_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_id' when calling ReportsApi.run_report"
      end
      # verify the required parameter 'table_id' is set
      if @api_client.config.client_side_validation && table_id.nil?
        fail ArgumentError, "Missing the required parameter 'table_id' when calling ReportsApi.run_report"
      end
      # verify the required parameter 'qb_realm_hostname' is set
      if @api_client.config.client_side_validation && qb_realm_hostname.nil?
        fail ArgumentError, "Missing the required parameter 'qb_realm_hostname' when calling ReportsApi.run_report"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ReportsApi.run_report"
      end
      # resource path
      local_var_path = '/reports/{reportId}/run'.sub('{' + 'reportId' + '}', report_id.to_s)

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
        @api_client.config.logger.debug "API called: ReportsApi#run_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
