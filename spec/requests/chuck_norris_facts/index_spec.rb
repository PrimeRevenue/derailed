require 'rails_helper'

RSpec.describe ChuckNorrisFactsController, type: :request  do

  let!(:make_the_facts) do
    5.times do
      create(:chuck_norris_facts)
    end
  end

  context "GET /chuck_norris_facts.json" do
    it "should have incredible karate power" do
      get chuck_norris_facts_path
      parsed = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(parsed.first['karatepower']).to be_within(2).of(10)
    end
  end
end

