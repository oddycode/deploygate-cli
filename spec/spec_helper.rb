require "webmock/rspec"
require "json"

require "deploygate"

RSpec.configure do |config|
  config.before :each do
    # config file mock
    allow(DeployGate::Config::Credential).to receive(:file_path).and_return(File.join(SPEC_FILE_PATH, 'test_files/.dg/credentials'))
  end
end

API_ENDPOINT = "https://deploygate.com/api"
SPEC_FILE_PATH = File.dirname(__FILE__)

def test_file_path
  File.join(SPEC_FILE_PATH, 'test_files/DeployGateSample.apk')
end
