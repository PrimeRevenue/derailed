require 'rails_helper'

RSpec.describe 'ChuckNorrisFactsController', type: :request do

  before do
    5.times do
      create(:chuck_norris_facts)
    end
  end

  describe "Smoke Test" do
    it "should have incredible karate power" do
      get chuck_norris_facts_path
      parsed = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(parsed.first['karatepower']).to be_within(2).of(10)
    end
  end

  describe "RateLimitable for ChuckNorrisFacts" do

    xit "should not limit total requests for a request without a defined user_id/scope" do

    end

    xit "should limit total requests for user_id to 3 within one minute" do

    end

    xit "when rate limit is exceeded SlowYourRollError exception is returned" do

    end

  end

end

