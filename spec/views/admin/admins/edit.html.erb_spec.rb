require 'spec_helper'

describe "admin/admins/edit" do
  before(:each) do
    @admin_admin = assign(:admin_admin, stub_model(Admin::Admin))
  end

  it "renders the edit admin_admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_admin_path(@admin_admin), "post" do
    end
  end
end
