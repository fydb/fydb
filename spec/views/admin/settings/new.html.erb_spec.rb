require 'spec_helper'

describe "admin/settings/new" do
  before(:each) do
    assign(:admin_setting, stub_model(Admin::Setting).as_new_record)
  end

  it "renders new admin_setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_settings_path, "post" do
    end
  end
end
