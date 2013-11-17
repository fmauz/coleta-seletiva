require 'spec_helper'

describe CardsController do

  let( :survey ) { FactoryGirl.create :survey }

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new', survey_id: survey.id
      response.should be_success
    end
  end

end
