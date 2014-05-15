require 'spec_helper'

describe "admin/admins/new" do
  before(:each) do
    assign(:admin_admin, stub_model(Admin::Admin).as_new_record)
  end

  it "renders new admin_admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_admins_path, "post" do
    end
  end
end
