require 'spec_helper'

describe "admin/pages/show" do
  before(:each) do
    @admin_page = assign(:admin_page, stub_model(Admin::Page))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
