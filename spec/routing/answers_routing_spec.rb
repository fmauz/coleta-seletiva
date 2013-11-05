require "spec_helper"

describe Admin::AnswersController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/surveys/1/sections/1/questions/1/answers").should route_to("admin/answers#index", :survey_id => "1", :section_id => "1", :question_id => "1")
    end

    it "routes to #new" do
      get("/admin/surveys/1/sections/1/questions/1/answers/new").should route_to("admin/answers#new", :survey_id => "1", :section_id => "1", :question_id => "1")
    end

    it "routes to #show" do
      get("/admin/surveys/1/sections/1/questions/1/answers/1").should route_to("admin/answers#show", :survey_id => "1", :section_id => "1", :question_id => "1", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/surveys/1/sections/1/questions/1/answers/1/edit").should route_to("admin/answers#edit", :survey_id => "1", :section_id => "1", :question_id => "1", :id => "1")
    end

    it "routes to #create" do
      post("/admin/surveys/1/sections/1/questions/1/answers").should route_to("admin/answers#create", :survey_id => "1", :section_id => "1", :question_id => "1")
    end

    it "routes to #update" do
      put("/admin/surveys/1/sections/1/questions/1/answers/1").should route_to("admin/answers#update", :survey_id => "1", :section_id => "1", :question_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/surveys/1/sections/1/questions/1/answers/1").should route_to("admin/answers#destroy", :survey_id => "1", :section_id => "1", :question_id => "1", :id => "1")
    end

  end
end
