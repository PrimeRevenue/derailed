require 'rails_helper'

RSpec.describe "chuck_dashboards/edit", type: :view do
  before(:each) do
    @chuck_dashboard = assign(:chuck_dashboard, ChuckDashboard.create!())
  end

  it "renders the edit chuck_dashboard form" do
    render

    assert_select "form[action=?][method=?]", chuck_dashboard_path(@chuck_dashboard), "post" do
    end
  end
end
