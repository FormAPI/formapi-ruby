# form_api

FormAPI - the Ruby gem for the API v1

FormAPI is a service that helps you fill out and sign PDF templates.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Package version: 1.9.0
- Build package: io.formapi.codegen.FormApiRubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build form_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./form_api-1.9.0.gem
```
(for development, run `gem install --dev ./form_api-1.9.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'form_api', '~> 1.9.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'form_api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'form_api'

# Setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
template_id = 'tpl_000000000000000001' # String | 
request_body = nil # Array<Object> | 

begin
  #Generates multiple PDFs
  result = api_instance.batch_generate_pdf_v1(template_id, request_body)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->batch_generate_pdf_v1: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.formapi.io/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*FormAPI::PDFApi* | [**batch_generate_pdf_v1**](docs/PDFApi.md#batch_generate_pdf_v1) | **POST** /templates/{template_id}/submissions/batch | Generates multiple PDFs
*FormAPI::PDFApi* | [**batch_generate_pdfs**](docs/PDFApi.md#batch_generate_pdfs) | **POST** /submissions/batches | Generates multiple PDFs
*FormAPI::PDFApi* | [**combine_pdfs**](docs/PDFApi.md#combine_pdfs) | **POST** /combined_submissions?v&#x3D;2 | Merge submission PDFs, template PDFs, or custom files
*FormAPI::PDFApi* | [**combine_submissions**](docs/PDFApi.md#combine_submissions) | **POST** /combined_submissions | Merge generated PDFs together
*FormAPI::PDFApi* | [**create_custom_file_from_upload**](docs/PDFApi.md#create_custom_file_from_upload) | **POST** /custom_files | Create a new custom file from a cached presign upload
*FormAPI::PDFApi* | [**create_data_request_token**](docs/PDFApi.md#create_data_request_token) | **POST** /data_requests/{data_request_id}/tokens | Creates a new data request token for form authentication
*FormAPI::PDFApi* | [**create_template**](docs/PDFApi.md#create_template) | **POST** /templates | Upload a new PDF template with a file upload
*FormAPI::PDFApi* | [**create_template_from_upload**](docs/PDFApi.md#create_template_from_upload) | **POST** /templates?v&#x3D;2 | Create a new PDF template from a cached presign upload
*FormAPI::PDFApi* | [**expire_combined_submission**](docs/PDFApi.md#expire_combined_submission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
*FormAPI::PDFApi* | [**expire_submission**](docs/PDFApi.md#expire_submission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
*FormAPI::PDFApi* | [**generate_pdf**](docs/PDFApi.md#generate_pdf) | **POST** /templates/{template_id}/submissions | Generates a new PDF
*FormAPI::PDFApi* | [**get_combined_submission**](docs/PDFApi.md#get_combined_submission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
*FormAPI::PDFApi* | [**get_data_request**](docs/PDFApi.md#get_data_request) | **GET** /data_requests/{data_request_id} | Look up a submission data request
*FormAPI::PDFApi* | [**get_presign_url**](docs/PDFApi.md#get_presign_url) | **GET** /uploads/presign | Get a presigned URL so that you can upload a file to our AWS S3 bucket
*FormAPI::PDFApi* | [**get_submission**](docs/PDFApi.md#get_submission) | **GET** /submissions/{submission_id} | Check the status of a PDF
*FormAPI::PDFApi* | [**get_submission_batch**](docs/PDFApi.md#get_submission_batch) | **GET** /submissions/batches/{submission_batch_id} | Check the status of a submission batch job
*FormAPI::PDFApi* | [**get_template**](docs/PDFApi.md#get_template) | **GET** /templates/{template_id} | Check the status of an uploaded template
*FormAPI::PDFApi* | [**get_template_schema**](docs/PDFApi.md#get_template_schema) | **GET** /templates/{template_id}/schema | Fetch the JSON schema for a template
*FormAPI::PDFApi* | [**list_templates**](docs/PDFApi.md#list_templates) | **GET** /templates | Get a list of all templates
*FormAPI::PDFApi* | [**test_authentication**](docs/PDFApi.md#test_authentication) | **GET** /authentication | Test Authentication
*FormAPI::PDFApi* | [**update_data_request**](docs/PDFApi.md#update_data_request) | **PUT** /data_requests/{data_request_id} | Update a submission data request


## Documentation for Models

 - [FormAPI::AuthenticationError](docs/AuthenticationError.md)
 - [FormAPI::AuthenticationSuccessResponse](docs/AuthenticationSuccessResponse.md)
 - [FormAPI::CombinePdfsData](docs/CombinePdfsData.md)
 - [FormAPI::CombinedSubmission](docs/CombinedSubmission.md)
 - [FormAPI::CombinedSubmissionAction](docs/CombinedSubmissionAction.md)
 - [FormAPI::CombinedSubmissionData](docs/CombinedSubmissionData.md)
 - [FormAPI::CreateCombinedSubmissionResponse](docs/CreateCombinedSubmissionResponse.md)
 - [FormAPI::CreateCustomFileData](docs/CreateCustomFileData.md)
 - [FormAPI::CreateCustomFileResponse](docs/CreateCustomFileResponse.md)
 - [FormAPI::CreateSubmissionBatchResponse](docs/CreateSubmissionBatchResponse.md)
 - [FormAPI::CreateSubmissionBatchSubmissionsResponse](docs/CreateSubmissionBatchSubmissionsResponse.md)
 - [FormAPI::CreateSubmissionDataRequestData](docs/CreateSubmissionDataRequestData.md)
 - [FormAPI::CreateSubmissionDataRequestTokenResponse](docs/CreateSubmissionDataRequestTokenResponse.md)
 - [FormAPI::CreateSubmissionDataRequestTokenResponseToken](docs/CreateSubmissionDataRequestTokenResponseToken.md)
 - [FormAPI::CreateSubmissionResponse](docs/CreateSubmissionResponse.md)
 - [FormAPI::CreateTemplateData](docs/CreateTemplateData.md)
 - [FormAPI::CustomFile](docs/CustomFile.md)
 - [FormAPI::Error](docs/Error.md)
 - [FormAPI::InvalidRequest](docs/InvalidRequest.md)
 - [FormAPI::PendingTemplate](docs/PendingTemplate.md)
 - [FormAPI::Submission](docs/Submission.md)
 - [FormAPI::SubmissionAction](docs/SubmissionAction.md)
 - [FormAPI::SubmissionBatch](docs/SubmissionBatch.md)
 - [FormAPI::SubmissionBatchData](docs/SubmissionBatchData.md)
 - [FormAPI::SubmissionData](docs/SubmissionData.md)
 - [FormAPI::SubmissionDataBatchRequest](docs/SubmissionDataBatchRequest.md)
 - [FormAPI::SubmissionDataRequest](docs/SubmissionDataRequest.md)
 - [FormAPI::Template](docs/Template.md)
 - [FormAPI::Templatesv2Template](docs/Templatesv2Template.md)
 - [FormAPI::Templatesv2TemplateDocument](docs/Templatesv2TemplateDocument.md)
 - [FormAPI::Templatesv2TemplateDocumentMetadata](docs/Templatesv2TemplateDocumentMetadata.md)
 - [FormAPI::UpdateDataRequestResponse](docs/UpdateDataRequestResponse.md)
 - [FormAPI::UpdateSubmissionDataRequestData](docs/UpdateSubmissionDataRequestData.md)


## Documentation for Authorization


### api_token_basic

- **Type**: HTTP basic authentication

