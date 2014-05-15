require "spec_helper"

describe Admin::AdminsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/admins").should route_to("admin/admins#index")
    end

    it "routes to #new" do
      get("/admin/admins/new").should route_to("admin/admins#new")
    end

    it "routes to #show" do
      get("/admin/admins/1").should route_to("admin/admins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/admins/1/edit").should route_to("admin/admins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/admins").should route_to("admin/admins#create")
    end

    it "routes to #update" do
      put("/admin/admins/1").should route_to("admin/admins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/admins/1").should route_to("admin/admins#destroy", :id => "1")
    end

  end
end
