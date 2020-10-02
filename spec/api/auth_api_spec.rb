=begin
#Quick Base API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'

# Unit tests for QuickBase::AuthApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthApi' do
  before do
    # run before each test
    @instance = QuickBase::AuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthApi' do
    it 'should create an instance of AuthApi' do
      expect(@instance).to be_instance_of(QuickBase::AuthApi)
    end
  end

  # unit tests for get_temp_token_dbid
  # Get a temporary token for a dbid
  # Use this endpoint to get a temporary authorization token, scoped to either an app or a table. You can then use this token to make other API calls (see [authorization](../auth)).  This token expires in 5 minutes.
  # @param dbid The unique identifier of an app or table.
  # @param qb_realm_hostname Your Quick Base domain, for example demo.quickbase.com
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_agent This is entered by the person or utility invoking the API. You might custom create this or use the default one of your toolkit. Being descriptive here may offer more identification and troubleshooting capabilities.
  # @option opts [String] :qb_app_token Your Quick Base app token
  # @return [Hash<String, Object>]
  describe 'get_temp_token_dbid test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end