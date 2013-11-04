require 'spec_helper'

describe Admin::SurveysController do
  let( :valid_attributes ) { FactoryGirl.attributes_for( :survey ) }
  let( :survey ) { FactoryGirl.create :survey }

  let( :valid_session ) { {} }

  describe "GET index" do
    it "assigns all surveys as @surveys" do
      get :index, {}, valid_session
      assigns(:surveys).should eq( [survey] )
    end
  end

  describe "GET show" do
    it "assigns the requested survey as @survey" do
      get :show, { :id => survey.to_param }, valid_session
      assigns(:survey).should eq(survey)
    end
  end

  describe "GET new" do
    it "assigns a new survey as @survey" do
      get :new, {}, valid_session
      assigns(:survey).should be_a_new( Survey )
    end
  end

  describe "GET edit" do
    it "assigns the requested survey as @survey" do
      get :edit, { :id => survey.to_param }, valid_session
      assigns(:survey).should eq(survey)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Survey" do
        expect {
          post :create, { :survey => valid_attributes }, valid_session
        }.to change(Survey, :count).by(1)
      end

      it "assigns a newly created survey as @survey" do
        post :create, { :survey => valid_attributes }, valid_session
        assigns(:survey).should be_a(Survey)
        assigns(:survey).should be_persisted
      end

      it "redirects to the created survey" do
        post :create, { :survey => valid_attributes }, valid_session
        response.should redirect_to([ :admin, Survey.last ])
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved survey as @survey" do
        Survey.any_instance.stub(:save).and_return(false)
        post :create, {:survey => { "name" => "invalid value" }}, valid_session
        assigns(:survey).should be_a_new(Survey)
      end

      it "re-renders the 'new' template" do
        Survey.any_instance.stub(:save).and_return(false)
        post :create, {:survey => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested survey" do
        Survey.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => survey.to_param, :survey => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested survey as @survey" do
        put :update, {:id => survey.to_param, :survey => valid_attributes}, valid_session
        assigns(:survey).should eq(survey)
      end

      it "redirects to the survey" do
        put :update, {:id => survey.to_param, :survey => valid_attributes}, valid_session
        response.should redirect_to([ :admin, survey ])
      end
    end

    describe "with invalid params" do
      it "assigns the survey as @survey" do
        Survey.any_instance.stub(:save).and_return(false)
        put :update, {:id => survey.to_param, :survey => { "name" => "invalid value" }}, valid_session
        assigns(:survey).should eq(survey)
      end

      it "re-renders the 'edit' template" do
        Survey.any_instance.stub(:save).and_return(false)
        put :update, {:id => survey.to_param, :survey => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested survey" do
      survey = Survey.create! valid_attributes
      expect {
        delete :destroy, {:id => survey.to_param}, valid_session
      }.to change(Survey, :count).by(-1)
    end

    it "redirects to the surveys list" do
      survey = Survey.create! valid_attributes
      delete :destroy, {:id => survey.to_param}, valid_session
      response.should redirect_to( admin_surveys_url )
    end
  end

end
