require 'rails_helper'

RSpec.describe "chuck_dashboards/show", type: :view do
  before(:each) do
    @chuck_dashboard = assign(:chuck_dashboard, ChuckDashboard.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
