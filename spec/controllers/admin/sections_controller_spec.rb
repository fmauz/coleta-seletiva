require 'spec_helper'

describe Admin::SectionsController do
  
  let( :section ) { FactoryGirl.create :section }
  let( :survey ) { section.survey }
  let(:valid_attributes) { FactoryGirl.attributes_for( :section ) }
  let(:valid_session) { { } }

  describe "GET index" do
    it "assigns all sections as @sections" do
      get :index, { :survey_id => survey.id }, valid_session
      assigns(:sections).should eq([section])
    end
  end

  describe "GET show" do
    it "assigns the requested section as @section" do
      get :show, { :id => section.to_param, :survey_id => survey.id }, valid_session
      assigns(:section).should eq(section)
    end
  end

  describe "GET new" do
    it "assigns a new section as @section" do
      get :new, { :survey_id => survey.id }, valid_session
      assigns(:section).should be_a_new(Section)
    end
  end

  describe "GET edit" do
    it "assigns the requested section as @section" do
      get :edit, { :id => section.to_param, :survey_id => survey.id }, valid_session
      assigns(:section).should eq(section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Section" do
        survey = FactoryGirl.create( :survey )
        expect {
          post :create, { :section => valid_attributes, :survey_id => survey.id }, valid_session
        }.to change(Section, :count).by(1)
      end

      it "assigns a newly created section as @section" do
        post :create, { :section => valid_attributes, :survey_id => survey.id }, valid_session
        assigns(:section).should be_a(Section)
        assigns(:section).should be_persisted
      end

      it "redirects to the created section" do
        post :create, { :section => valid_attributes, :survey_id => survey.id }, valid_session
        response.should redirect_to([ :admin, survey, Section.last ])
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved section as @section" do
        post :create, { :section => { "name" => "" }, :survey_id => survey.id }, valid_session
        assigns(:section).should be_a_new(Section)
      end

      it "should render template new" do
        post :create, { :section => { "name" => "" }, :survey_id => survey.id }, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested section" do
        Section.any_instance.should_receive(:update).with({ "name" => "" })
        put :update, { :id => section.to_param, :section => { "name" => "" }, :survey_id => survey.id }, valid_session
      end

      it "assigns the requested section as @section" do
        put :update, { :id => section.to_param, :section => valid_attributes, :survey_id => survey.id }, valid_session
        assigns(:section).should eq(section)
      end

      it "redirects to the section" do
        put :update, { :id => section.to_param, :section => valid_attributes, :survey_id => survey.id }, valid_session
        response.should redirect_to([ :admin, survey, section ])
      end
    end

    describe "with invalid params" do
      it "assigns the section as @section" do
        Section.any_instance.stub(:save).and_return(false)
        put :update, { :id => section.to_param, :section => { "name" => "" }, :survey_id => survey.id }, valid_session
        assigns(:section).should eq(section)
      end

      it "should render template edit" do
        Section.any_instance.stub(:save).and_return(false)
        put :update, { :id => section.to_param, :section => { "name" => "" }, :survey_id => survey.id }, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested section" do
      section
      expect {
        delete :destroy, { :id => section.to_param, :survey_id => survey.id }, valid_session
      }.to change(Section, :count).by(-1)
    end

    it "redirects to the sections list" do
      section
      delete :destroy, { :id => section.to_param, :survey_id => survey.id }, valid_session
      response.should redirect_to( admin_survey_sections_url )
    end
  end

end
