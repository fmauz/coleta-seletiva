require "spec_helper"

describe Admin::QuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/surveys/1/sections/1/questions").should route_to("admin/questions#index", :survey_id => "1", :section_id => "1")
    end

    it "routes to #new" do
      get("/admin/surveys/1/sections/1/questions/new").should route_to("admin/questions#new", :survey_id => "1", :section_id => "1")
    end

    it "routes to #show" do
      get("/admin/surveys/1/sections/1/questions/1").should route_to("admin/questions#show", :survey_id => "1", :section_id => "1", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/surveys/1/sections/1/questions/1/edit").should route_to("admin/questions#edit", :survey_id => "1", :section_id => "1", :id => "1")
    end

    it "routes to #create" do
      post("/admin/surveys/1/sections/1/questions").should route_to("admin/questions#create", :survey_id => "1", :section_id => "1")
    end

    it "routes to #update" do
      put("/admin/surveys/1/sections/1/questions/1").should route_to("admin/questions#update", :survey_id => "1", :section_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/surveys/1/sections/1/questions/1").should route_to("admin/questions#destroy", :survey_id => "1", :section_id => "1", :id => "1")
    end

  end
end
