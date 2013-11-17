require "spec_helper"

describe CardsController do
  describe "routing" do

    it "routes to #index" do
      get("/cards").should route_to("cards#index")
    end

    it "routes to #new" do
      get("/cards/new").should route_to("cards#new")
    end

    it "routes to #create" do
      post("/cards").should route_to("cards#create")
    end
  end
end
