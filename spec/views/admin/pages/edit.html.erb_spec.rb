require 'spec_helper'

describe "admin/pages/edit" do
  before(:each) do
    @admin_page = assign(:admin_page, stub_model(Admin::Page))
  end

  it "renders the edit admin_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_page_path(@admin_page), "post" do
    end
  end
end
