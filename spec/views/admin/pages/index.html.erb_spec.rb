require 'spec_helper'

describe "admin/pages/index" do
  before(:each) do
    assign(:admin_pages, [
      stub_model(Admin::Page),
      stub_model(Admin::Page)
    ])
  end

  it "renders a list of admin/pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
