require "spec_helper"

describe Admin::MenusController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/menus").should route_to("admin/menus#index")
    end

    it "routes to #new" do
      get("/admin/menus/new").should route_to("admin/menus#new")
    end

    it "routes to #show" do
      get("/admin/menus/1").should route_to("admin/menus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/menus/1/edit").should route_to("admin/menus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/menus").should route_to("admin/menus#create")
    end

    it "routes to #update" do
      put("/admin/menus/1").should route_to("admin/menus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/menus/1").should route_to("admin/menus#destroy", :id => "1")
    end

  end
end
