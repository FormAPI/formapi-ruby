=begin
#API v1

#FormAPI is a service that helps you fill out and sign PDF templates.

OpenAPI spec version: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for FormAPI::PDFApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PDFApi' do
  before do
    FormAPI.configure do |c|
      c.username  = 'api_token123'
      c.password  = 'testsecret123'
      c.host = 'api.formapi.local:31337'
      c.scheme = 'http'
    end
  end

  let(:api_instance) { FormAPI::PDFApi.new }

  after do
    # run after each test
  end

  describe 'test an instance of PDFApi' do
    it 'should create an instance of PDFApi' do
      expect(api_instance).to be_instance_of(FormAPI::PDFApi)
    end
  end

  # integration tests for batch_generate_pdf_v1
  # Generates multiple PDFs
  # @param template_id 
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [Array<CreateSubmissionResponse>]
  describe 'batch_generate_pdf_v1 test' do
    it 'should work' do
      template_id = 'tpl_000000000000000001' # String | 
      request_body = nil # Array<Object> | 
      result = api_instance.batch_generate_pdf_v1(template_id, request_body)
      expect(result).to_not be_nil
    end
  end
  # integration tests for batch_generate_pdfs
  # Generates multiple PDFs
  # @param submission_batch_data 
  # @param [Hash] opts the optional parameters
  # @return [CreateSubmissionBatchResponse]
  describe 'batch_generate_pdfs test' do
    it 'should work' do
      submission_batch_data = FormAPI::SubmissionBatchData.new # SubmissionBatchData | 
      result = api_instance.batch_generate_pdfs(submission_batch_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for combine_pdfs
  # Merge submission PDFs, template PDFs, or custom files
  # @param combine_pdfs_data 
  # @param [Hash] opts the optional parameters
  # @return [CreateCombinedSubmissionResponse]
  describe 'combine_pdfs test' do
    it 'should work' do
      combine_pdfs_data = FormAPI::CombinePdfsData.new # CombinePdfsData | 
      result = api_instance.combine_pdfs(combine_pdfs_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for combine_submissions
  # Merge generated PDFs together
  # @param combined_submission_data 
  # @param [Hash] opts the optional parameters
  # @return [CreateCombinedSubmissionResponse]
  describe 'combine_submissions test' do
    it 'should work' do
      combined_submission_data = FormAPI::CombinedSubmissionData.new # CombinedSubmissionData | 
      result = api_instance.combine_submissions(combined_submission_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for create_custom_file_from_upload
  # Create a new custom file from a cached presign upload
  # @param create_custom_file_data 
  # @param [Hash] opts the optional parameters
  # @return [CreateCustomFileResponse]
  describe 'create_custom_file_from_upload test' do
    it 'should work' do
      create_custom_file_data = FormAPI::CreateCustomFileData.new # CreateCustomFileData | 
      result = api_instance.create_custom_file_from_upload(create_custom_file_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for create_data_request_token
  # Creates a new data request token for form authentication
  # @param data_request_id 
  # @param [Hash] opts the optional parameters
  # @return [CreateSubmissionDataRequestTokenResponse]
  describe 'create_data_request_token test' do
    it 'should work' do
      data_request_id = 'drq_000000000000000001' # String | 
      result = api_instance.create_data_request_token(data_request_id)
      expect(result).to_not be_nil
    end
  end
  # integration tests for create_folder
  # Create a folder
  # @param create_folder_data 
  # @param [Hash] opts the optional parameters
  # @return [Folder]
  describe 'create_folder test' do
    it 'should work' do
      create_folder_data = FormAPI::CreateFolderData.new # CreateFolderData | 
      result = api_instance.create_folder(create_folder_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for create_template
  # Upload a new PDF template with a file upload
  # @param template_document 
  # @param template_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :template_parent_folder_id 
  # @return [PendingTemplate]
  describe 'create_template test' do
    it 'should work' do
      template_document = File.new('/path/to/file') # File | 
      template_name = 'template_name_example' # String | 
      opts = {
        template_parent_folder_id: 'template_parent_folder_id_example' # String | 
      }
      result = api_instance.create_template(template_document, template_name, opts)
      expect(result).to_not be_nil
    end
  end
  # integration tests for create_template_from_upload
  # Create a new PDF template from a cached presign upload
  # @param create_template_data 
  # @param [Hash] opts the optional parameters
  # @return [PendingTemplate]
  describe 'create_template_from_upload test' do
    it 'should work' do
      create_template_data = FormAPI::CreateTemplateData.new # CreateTemplateData | 
      result = api_instance.create_template_from_upload(create_template_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for delete_folder
  # Delete a folder
  # @param folder_id 
  # @param [Hash] opts the optional parameters
  # @return [Folder]
  describe 'delete_folder test' do
    it 'should work' do
      folder_id = 'fld_000000000000000001' # String | 
      result = api_instance.delete_folder(folder_id)
      expect(result).to_not be_nil
    end
  end
  # integration tests for expire_combined_submission
  # Expire a combined submission
  # @param combined_submission_id 
  # @param [Hash] opts the optional parameters
  # @return [CombinedSubmission]
  describe 'expire_combined_submission test' do
    it 'should work' do
      combined_submission_id = 'com_000000000000000001' # String | 
      result = api_instance.expire_combined_submission(combined_submission_id)
      expect(result).to_not be_nil
    end
  end
  # integration tests for expire_submission
  # Expire a PDF submission
  # @param submission_id 
  # @param [Hash] opts the optional parameters
  # @return [Submission]
  describe 'expire_submission test' do
    it 'should work' do
      submission_id = 'sub_000000000000000001' # String | 
      result = api_instance.expire_submission(submission_id)
      expect(result).to_not be_nil
    end
  end
  # integration tests for generate_pdf
  # Generates a new PDF
  # @param template_id 
  # @param submission_data 
  # @param [Hash] opts the optional parameters
  # @return [CreateSubmissionResponse]
  describe 'generate_pdf test' do
    it 'should work' do
      template_id = 'tpl_000000000000000001' # String | 
      submission_data = FormAPI::SubmissionData.new # SubmissionData | 
      result = api_instance.generate_pdf(template_id, submission_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for get_combined_submission
  # Check the status of a combined submission (merged PDFs)
  # @param combined_submission_id 
  # @param [Hash] opts the optional parameters
  # @return [CombinedSubmission]
  describe 'get_combined_submission test' do
    it 'should work' do
      combined_submission_id = 'com_000000000000000001' # String | 
      result = api_instance.get_combined_submission(combined_submission_id)
      expect(result).to_not be_nil
    end
  end
  # integration tests for get_data_request
  # Look up a submission data request
  # @param data_request_id 
  # @param [Hash] opts the optional parameters
  # @return [SubmissionDataRequest]
  describe 'get_data_request test' do
    it 'should work' do
      data_request_id = 'drq_000000000000000001' # String | 
      result = api_instance.get_data_request(data_request_id)
      expect(result).to_not be_nil
    end
  end
  # integration tests for get_presign_url
  # Get a presigned URL so that you can upload a file to our AWS S3 bucket
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'get_presign_url test' do
    it 'should work' do
      result = api_instance.get_presign_url
      expect(result).to_not be_nil
    end
  end
  # integration tests for get_submission
  # Check the status of a PDF
  # @param submission_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_data 
  # @return [Submission]
  describe 'get_submission test' do
    it 'should work' do
      submission_id = 'sub_000000000000000001' # String | 
      opts = {
        include_data: false # BOOLEAN | 
      }
      result = api_instance.get_submission(submission_id, opts)
      expect(result).to_not be_nil
    end
  end
  # integration tests for get_submission_batch
  # Check the status of a submission batch job
  # @param submission_batch_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_submissions 
  # @return [SubmissionBatch]
  describe 'get_submission_batch test' do
    it 'should work' do
      submission_batch_id = 'sbb_000000000000000001' # String | 
      opts = {
        include_submissions: true # BOOLEAN | 
      }
      result = api_instance.get_submission_batch(submission_batch_id, opts)
      expect(result).to_not be_nil
    end
  end
  # integration tests for get_template
  # Get a single template
  # @param template_id 
  # @param [Hash] opts the optional parameters
  # @return [Template]
  describe 'get_template test' do
    it 'should work' do
      template_id = 'tpl_000000000000000011' # String | 
      result = api_instance.get_template(template_id)
      expect(result).to_not be_nil
    end
  end
  # integration tests for get_template_schema
  # Fetch the JSON schema for a template
  # @param template_id 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'get_template_schema test' do
    it 'should work' do
      template_id = 'tpl_000000000000000001' # String | 
      result = api_instance.get_template_schema(template_id)
      expect(result).to_not be_nil
    end
  end
  # integration tests for list_folders
  # Get a list of all folders
  # @param [Hash] opts the optional parameters
  # @option opts [String] :parent_folder_id Filter By Folder Id
  # @return [Array<Folder>]
  describe 'list_folders test' do
    it 'should work' do
      opts = {
        parent_folder_id: 'fld_000000000000000002' # String | Filter By Folder Id
      }
      result = api_instance.list_folders(opts)
      expect(result).to_not be_nil
    end
  end
  # integration tests for list_templates
  # Get a list of all templates
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query Search By Name
  # @option opts [String] :parent_folder_id Filter By Folder Id
  # @option opts [Integer] :page Default: 1
  # @option opts [Integer] :per_page Default: 50
  # @return [Array<Template>]
  describe 'list_templates test' do
    it 'should work' do
      opts = {
        query: '2', # String | Search By Name
        parent_folder_id: 'fld_000000000000000001', # String | Filter By Folder Id
        page: 2, # Integer | Default: 1
        per_page: 1 # Integer | Default: 50
      }
      result = api_instance.list_templates(opts)
      expect(result).to_not be_nil
    end
  end
  # integration tests for move_folder_to_folder
  # Move a folder
  # @param folder_id 
  # @param move_folder_data 
  # @param [Hash] opts the optional parameters
  # @return [Folder]
  describe 'move_folder_to_folder test' do
    it 'should work' do
      folder_id = 'fld_000000000000000001' # String | 
      move_folder_data = FormAPI::MoveFolderData.new # MoveFolderData | 
      result = api_instance.move_folder_to_folder(folder_id, move_folder_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for move_template_to_folder
  # Move Template to folder
  # @param template_id 
  # @param move_template_data 
  # @param [Hash] opts the optional parameters
  # @return [Template]
  describe 'move_template_to_folder test' do
    it 'should work' do
      template_id = 'tpl_000000000000000001' # String | 
      move_template_data = FormAPI::MoveTemplateData.new # MoveTemplateData | 
      result = api_instance.move_template_to_folder(template_id, move_template_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for rename_folder
  # Rename a folder
  # @param folder_id 
  # @param rename_folder_data 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'rename_folder test' do
    it 'should work' do
      folder_id = 'fld_000000000000000001' # String | 
      rename_folder_data = FormAPI::RenameFolderData.new # RenameFolderData | 
      api_instance.rename_folder(folder_id, rename_folder_data)
      expect(result).to_not be_nil
    end
  end
  # integration tests for test_authentication
  # Test Authentication
  # @param [Hash] opts the optional parameters
  # @return [AuthenticationSuccessResponse]
  describe 'test_authentication test' do
    it 'should work' do
      result = api_instance.test_authentication
      expect(result).to_not be_nil
    end
  end
  # integration tests for update_data_request
  # Update a submission data request
  # @param data_request_id 
  # @param update_submission_data_request_data 
  # @param [Hash] opts the optional parameters
  # @return [UpdateDataRequestResponse]
  describe 'update_data_request test' do
    it 'should work' do
      data_request_id = 'drq_000000000000000001' # String | 
      update_submission_data_request_data = FormAPI::UpdateSubmissionDataRequestData.new # UpdateSubmissionDataRequestData | 
      result = api_instance.update_data_request(data_request_id, update_submission_data_request_data)
      expect(result).to_not be_nil
    end
  end
end
