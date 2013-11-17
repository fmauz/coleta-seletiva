require 'spec_helper'

describe CountiesController do
  let( :county ) { FactoryGirl.create :county }

  describe "GET 'index'" do
    it "returns http success" do
      get 'index', code: county.code, format: :json
      response.should be_success
    end
  end

end
