require 'spec_helper'

describe "admin/menus/edit" do
  before(:each) do
    @admin_menu = assign(:admin_menu, stub_model(Admin::Menu))
  end

  it "renders the edit admin_menu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_menu_path(@admin_menu), "post" do
    end
  end
end
