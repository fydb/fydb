require 'spec_helper'

describe "admin/menus/new" do
  before(:each) do
    assign(:admin_menu, stub_model(Admin::Menu).as_new_record)
  end

  it "renders new admin_menu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_menus_path, "post" do
    end
  end
end
