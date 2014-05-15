require 'spec_helper'

describe "admin/settings/show" do
  before(:each) do
    @admin_setting = assign(:admin_setting, stub_model(Admin::Setting))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
