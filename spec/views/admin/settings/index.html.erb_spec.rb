require 'spec_helper'

describe "admin/settings/index" do
  before(:each) do
    assign(:admin_settings, [
      stub_model(Admin::Setting),
      stub_model(Admin::Setting)
    ])
  end

  it "renders a list of admin/settings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
