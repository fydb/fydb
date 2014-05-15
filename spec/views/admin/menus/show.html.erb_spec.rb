require 'spec_helper'

describe "admin/menus/show" do
  before(:each) do
    @admin_menu = assign(:admin_menu, stub_model(Admin::Menu))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
