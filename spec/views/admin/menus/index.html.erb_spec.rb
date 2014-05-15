require 'spec_helper'

describe "admin/menus/index" do
  before(:each) do
    assign(:admin_menus, [
      stub_model(Admin::Menu),
      stub_model(Admin::Menu)
    ])
  end

  it "renders a list of admin/menus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
