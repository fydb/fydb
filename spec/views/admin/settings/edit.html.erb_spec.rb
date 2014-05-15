require 'spec_helper'

describe "admin/settings/edit" do
  before(:each) do
    @admin_setting = assign(:admin_setting, stub_model(Admin::Setting))
  end

  it "renders the edit admin_setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_setting_path(@admin_setting), "post" do
    end
  end
end
