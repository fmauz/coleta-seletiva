require "spec_helper"

describe Admin::CountiesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/counties").should route_to("admin/counties#index")
    end

    it "routes to #new" do
      get("/admin/counties/new").should route_to("admin/counties#new")
    end

    it "routes to #show" do
      get("/admin/counties/1").should route_to("admin/counties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/counties/1/edit").should route_to("admin/counties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/counties").should route_to("admin/counties#create")
    end

    it "routes to #update" do
      put("/admin/counties/1").should route_to("admin/counties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/counties/1").should route_to("admin/counties#destroy", :id => "1")
    end

  end
end
