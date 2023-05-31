# file: spec/integration/application_spec.rb

require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context "GET to /names" do
    it "returns 200 OK with the right content" do
      # Send a GET request to /
      # and returns a response object we can test.
      # Assert the response status code and body.
      response = get("/names?names=Julia,Mary,Karim")

      expect(response.status).to eq(200)
      expect(response.body).to eq("Julia,Mary,Karim")
    end
  end
end