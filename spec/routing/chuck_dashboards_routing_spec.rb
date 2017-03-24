require "rails_helper"

RSpec.describe ChuckDashboardsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/chuck_dashboards").to route_to("chuck_dashboards#index")
    end

    it "routes to #new" do
      expect(:get => "/chuck_dashboards/new").to route_to("chuck_dashboards#new")
    end

    it "routes to #show" do
      expect(:get => "/chuck_dashboards/1").to route_to("chuck_dashboards#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chuck_dashboards/1/edit").to route_to("chuck_dashboards#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/chuck_dashboards").to route_to("chuck_dashboards#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chuck_dashboards/1").to route_to("chuck_dashboards#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chuck_dashboards/1").to route_to("chuck_dashboards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chuck_dashboards/1").to route_to("chuck_dashboards#destroy", :id => "1")
    end

  end
end
