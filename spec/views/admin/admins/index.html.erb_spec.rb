require 'spec_helper'

describe "admin/admins/index" do
  before(:each) do
    assign(:admin_admins, [
      stub_model(Admin::Admin),
      stub_model(Admin::Admin)
    ])
  end

  it "renders a list of admin/admins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
