require 'rails_helper'

RSpec.describe "ChuckDashboards", type: :request do
  describe "GET /chuck_dashboards" do
    it "works! (now write some real specs)" do
      get chuck_dashboards_path
      expect(response).to have_http_status(200)
    end
  end
end
