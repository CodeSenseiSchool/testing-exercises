require_relative "fetcher"
require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = "./04_request_mocking/"
  config.hook_into :webmock
end

RSpec.describe Fetcher do
  around do |example|
    VCR.use_cassette("fetcher") { example.run }
  end

  let(:service) { described_class.new }

  describe "#fetch" do
    subject { service.fetch(currency) }

    context "when currency is properly fetched" do
      let(:currency) { :usd }

      it "returns correct value" do
        raise NotImplementedError
      end
    end
  end
end
