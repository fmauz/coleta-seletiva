require 'spec_helper'

describe CardsController do
  before :each do
    FactoryGirl.create(:county)
    FactoryGirl.create(:survey)
    FactoryGirl.create(:card)
  end

  describe "GET 'index'" do
    it "returns http success" do
      sign_in
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
