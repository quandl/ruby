=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.13.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for Kubernetes::AuthenticationV1beta1Api
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthenticationV1beta1Api' do
  before do
    # run before each test
    @instance = Kubernetes::AuthenticationV1beta1Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticationV1beta1Api' do
    it 'should create an instance of AuthenticationV1beta1Api' do
      expect(@instance).to be_instance_of(Kubernetes::AuthenticationV1beta1Api)
    end
  end

  # unit tests for create_token_review
  # 
  # create a TokenReview
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  # @option opts [BOOLEAN] :include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization.
  # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
  # @return [V1beta1TokenReview]
  describe 'create_token_review test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_resources
  # 
  # get available resources
  # @param [Hash] opts the optional parameters
  # @return [V1APIResourceList]
  describe 'get_api_resources test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
