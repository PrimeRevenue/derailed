require 'rails_helper'

RSpec.describe ChuckNorrisFactsController, type: :request  do

  before :all do 
    5.times do
        create(:chuck_norris_facts)
      end
  end

  subject "GET /chuck_norris_facts.json?" do
    it "should have incredible karate power" do
      get chuck_norris_facts_path
      parsed = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(parsed.first['karatepower']).to be_within(2).of(10)
    end

    context "RateLimitable for ChuckNorrisFacts" do

        xit "should not limit total requests for request without user_id/scope"

        xit "should limit total requests for user_id to 3"

        xit "should limit total requests for user_id to 3 within one minute"

        xit "when rate limit is exceeded SlowYourRollError exception is returned"


    end
  end

end

