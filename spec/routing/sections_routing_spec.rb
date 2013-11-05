require "spec_helper"

describe Admin::SectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/surveys/1/sections").should route_to("admin/sections#index", :survey_id => "1")
    end

    it "routes to #new" do
      get("/admin/surveys/1/sections/new").should route_to("admin/sections#new", :survey_id => "1")
    end

    it "routes to #show" do
      get("/admin/surveys/1/sections/1").should route_to("admin/sections#show", :survey_id => "1", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/surveys/1/sections/1/edit").should route_to("admin/sections#edit", :survey_id => "1", :id => "1")
    end

    it "routes to #create" do
      post("/admin/surveys/1/sections").should route_to("admin/sections#create", :survey_id => "1")
    end

    it "routes to #update" do
      put("/admin/surveys/1/sections/1").should route_to("admin/sections#update", :survey_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/surveys/1/sections/1").should route_to("admin/sections#destroy", :survey_id => "1", :id => "1")
    end

  end
end
