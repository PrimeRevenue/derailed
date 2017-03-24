require 'rails_helper'

RSpec.describe "chuck_dashboards/index", type: :view do
  before(:each) do
    assign(:chuck_dashboards, [
      ChuckDashboard.create!(),
      ChuckDashboard.create!()
    ])
  end

  it "renders a list of chuck_dashboards" do
    render
  end
end
