require 'rails_helper'

RSpec.describe "chuck_dashboards/new", type: :view do
  before(:each) do
    assign(:chuck_dashboard, ChuckDashboard.new())
  end

  it "renders new chuck_dashboard form" do
    render

    assert_select "form[action=?][method=?]", chuck_dashboards_path, "post" do
    end
  end
end
