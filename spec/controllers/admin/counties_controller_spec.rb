require 'spec_helper'

describe Admin::CountiesController do

  let(:county) { FactoryGirl.create :county }
  let(:valid_attributes) { FactoryGirl.attributes_for( :county ) }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all counties as @counties" do
      get :index, {}, valid_session
      assigns(:counties).should eq([county])
    end
  end

  describe "GET show" do
    it "assigns the requested county as @county" do
      get :show, {:id => county.to_param}, valid_session
      assigns(:county).should eq(county)
    end
  end

  describe "GET new" do
    it "assigns a new county as @county" do
      get :new, {}, valid_session
      assigns(:county).should be_a_new(County)
    end
  end

  describe "GET edit" do
    it "assigns the requested county as @county" do
      get :edit, {:id => county.to_param}, valid_session
      assigns(:county).should eq(county)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new County" do
        expect {
          post :create, {:county => valid_attributes}, valid_session
        }.to change(County, :count).by(1)
      end

      it "assigns a newly created county as @county" do
        post :create, {:county => valid_attributes}, valid_session
        assigns(:county).should be_a(County)
        assigns(:county).should be_persisted
      end

      it "redirects to the created county" do
        post :create, {:county => valid_attributes}, valid_session
        response.should redirect_to([ :admin, County.last ])
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved county as @county" do
        post :create, {:county => { "name" => "" }}, valid_session
        assigns(:county).should be_a_new(County)
      end

      it "re-renders the 'new' template" do
        post :create, {:county => { "name" => "" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested county" do
        County.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => county.to_param, :county => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested county as @county" do
        put :update, {:id => county.to_param, :county => valid_attributes}, valid_session
        assigns(:county).should eq(county)
      end

      it "redirects to the county" do
        put :update, {:id => county.to_param, :county => valid_attributes}, valid_session
        response.should redirect_to([:admin, county])
      end
    end

    describe "with invalid params" do
      it "assigns the county as @county" do
        put :update, {:id => county.to_param, :county => { "name" => "" }}, valid_session
        assigns(:county).should eq(county)
      end

      it "re-renders the 'edit' template" do
        put :update, {:id => county.to_param, :county => { "name" => "" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested county" do
      county
      expect {
        delete :destroy, {:id => county.to_param}, valid_session
      }.to change(County, :count).by(-1)
    end

    it "redirects to the counties list" do
      county
      delete :destroy, {:id => county.to_param}, valid_session
      response.should redirect_to(admin_counties_url)
    end
  end

end
