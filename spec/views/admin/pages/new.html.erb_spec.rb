require 'spec_helper'

describe "admin/pages/new" do
  before(:each) do
    assign(:admin_page, stub_model(Admin::Page).as_new_record)
  end

  it "renders new admin_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_pages_path, "post" do
    end
  end
end
