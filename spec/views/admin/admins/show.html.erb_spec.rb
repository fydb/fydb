require 'spec_helper'

describe "admin/admins/show" do
  before(:each) do
    @admin_admin = assign(:admin_admin, stub_model(Admin::Admin))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
