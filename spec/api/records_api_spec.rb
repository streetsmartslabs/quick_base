=begin
#Quick Base API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'

# Unit tests for QuickBase::RecordsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RecordsApi' do
  before do
    # run before each test
    @instance = QuickBase::RecordsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RecordsApi' do
    it 'should create an instance of RecordsApi' do
      expect(@instance).to be_instance_of(QuickBase::RecordsApi)
    end
  end

  # unit tests for delete_records
  # Delete record(s)
  # Deletes record(s) in a table based on a query. Alternatively, all records in the table can be deleted.
  # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
  # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  # @option opts [Generated11] :generated 
  # @return [Hash<String, Object>]
  describe 'delete_records test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for run_query
  # Query for data
  # Pass in a query in the [Quick Base query language](https://help.quickbase.com/api-guide/componentsquery.html). Returns record data with intelligent pagination based on the approximate size of each record. The metadata object will include the necessary information to iterate over the response and gather more data.
  # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
  # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  # @option opts [Generated12] :generated 
  # @return [Hash<String, Object>]
  describe 'run_query test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upsert
  # Insert/Update record(s)
  # Insert and/or update record(s) in a table. In this single API call, inserts and updates can be submitted. Update can use the key field on the table, or any other supported unique field. Refer to the [Field types page](../fieldInfo) for more information about how each field type should be formatted. This operation allows for incremental processing of successful records, even when some of the records fail.   **Note:** This endpoint supports a maximum payload size of 10MB.
  # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
  # @param authorization The Quick Base authentication scheme you are using to authenticate the request, as described on the [authorization page](../auth).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  # @option opts [Generated10] :generated 
  # @return [Hash<String, Object>]
  describe 'upsert test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end