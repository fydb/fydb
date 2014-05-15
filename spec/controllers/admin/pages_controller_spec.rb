require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Admin::PagesController do

  # This should return the minimal set of attributes required to create a valid
  # Admin::Page. As you add validations to Admin::Page, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::PagesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all admin_pages as @admin_pages" do
      page = Admin::Page.create! valid_attributes
      get :index, {}, valid_session
      assigns(:admin_pages).should eq([page])
    end
  end

  describe "GET show" do
    it "assigns the requested admin_page as @admin_page" do
      page = Admin::Page.create! valid_attributes
      get :show, {:id => page.to_param}, valid_session
      assigns(:admin_page).should eq(page)
    end
  end

  describe "GET new" do
    it "assigns a new admin_page as @admin_page" do
      get :new, {}, valid_session
      assigns(:admin_page).should be_a_new(Admin::Page)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_page as @admin_page" do
      page = Admin::Page.create! valid_attributes
      get :edit, {:id => page.to_param}, valid_session
      assigns(:admin_page).should eq(page)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::Page" do
        expect {
          post :create, {:admin_page => valid_attributes}, valid_session
        }.to change(Admin::Page, :count).by(1)
      end

      it "assigns a newly created admin_page as @admin_page" do
        post :create, {:admin_page => valid_attributes}, valid_session
        assigns(:admin_page).should be_a(Admin::Page)
        assigns(:admin_page).should be_persisted
      end

      it "redirects to the created admin_page" do
        post :create, {:admin_page => valid_attributes}, valid_session
        response.should redirect_to(Admin::Page.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_page as @admin_page" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Page.any_instance.stub(:save).and_return(false)
        post :create, {:admin_page => {  }}, valid_session
        assigns(:admin_page).should be_a_new(Admin::Page)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Page.any_instance.stub(:save).and_return(false)
        post :create, {:admin_page => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested admin_page" do
        page = Admin::Page.create! valid_attributes
        # Assuming there are no other admin_pages in the database, this
        # specifies that the Admin::Page created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Admin::Page.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => page.to_param, :admin_page => { "these" => "params" }}, valid_session
      end

      it "assigns the requested admin_page as @admin_page" do
        page = Admin::Page.create! valid_attributes
        put :update, {:id => page.to_param, :admin_page => valid_attributes}, valid_session
        assigns(:admin_page).should eq(page)
      end

      it "redirects to the admin_page" do
        page = Admin::Page.create! valid_attributes
        put :update, {:id => page.to_param, :admin_page => valid_attributes}, valid_session
        response.should redirect_to(page)
      end
    end

    describe "with invalid params" do
      it "assigns the admin_page as @admin_page" do
        page = Admin::Page.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Page.any_instance.stub(:save).and_return(false)
        put :update, {:id => page.to_param, :admin_page => {  }}, valid_session
        assigns(:admin_page).should eq(page)
      end

      it "re-renders the 'edit' template" do
        page = Admin::Page.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::Page.any_instance.stub(:save).and_return(false)
        put :update, {:id => page.to_param, :admin_page => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_page" do
      page = Admin::Page.create! valid_attributes
      expect {
        delete :destroy, {:id => page.to_param}, valid_session
      }.to change(Admin::Page, :count).by(-1)
    end

    it "redirects to the admin_pages list" do
      page = Admin::Page.create! valid_attributes
      delete :destroy, {:id => page.to_param}, valid_session
      response.should redirect_to(admin_pages_url)
    end
  end

end
