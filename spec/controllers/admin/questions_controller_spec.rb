require 'spec_helper'
describe Admin::QuestionsController do

  let(:section) { question.section }
  let(:survey) { section.survey }
  let(:question) { FactoryGirl.create :question }
  let(:valid_attributes) { FactoryGirl.attributes_for( :question ) }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all questions as @questions" do
      get :index, {:section_id => section.id, :survey_id => survey.id}, valid_session
      assigns(:questions).should eq([question])
    end
  end

  describe "GET show" do
    it "assigns the requested question as @question" do
      get :show, {:id => question.to_param, :section_id => section.id, :survey_id => survey.id }, valid_session
      assigns(:question).should eq(question)
    end
  end

  describe "GET new" do
    it "assigns a new question as @question" do
      get :new, { :section_id => section.id, :survey_id => survey.id }, valid_session
      assigns(:question).should be_a_new(Question)
    end
  end

  describe "GET edit" do
    it "assigns the requested question as @question" do
      get :edit, { :id => question.to_param, :section_id => section.id, :survey_id => survey.id }, valid_session
      assigns(:question).should eq(question)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Question" do
        section = FactoryGirl.create( :section )
        survey = section.survey
        expect {
          post :create, {:question => valid_attributes, :section_id => section.id, :survey_id => survey.id}, valid_session
        }.to change(Question, :count).by(1)
      end

      it "assigns a newly created question as @question" do
        post :create, {:question => valid_attributes, :section_id => section.id, :survey_id => survey.id}, valid_session
        assigns(:question).should be_a(Question)
        assigns(:question).should be_persisted
      end

      it "redirects to the created question" do
        post :create, {:question => valid_attributes, :section_id => section.id, :survey_id => survey.id}, valid_session
        response.should redirect_to([ :admin, survey, section, Question.last ])
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved question as @question" do
        post :create, {:question => { "code" => "" }, :section_id => section.id, :survey_id => survey.id}, valid_session
        assigns(:question).should be_a_new(Question)
      end

      it "should render template new" do
        post :create, {:question => { "code" => "" }, :section_id => section.id, :survey_id => survey.id}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested question" do
        Question.any_instance.should_receive(:update).with({ "code" => "" })
        put :update, {:id => question.to_param, :question => { "code" => "" }, :section_id => section.id, :survey_id => survey.id}, valid_session
      end

      it "assigns the requested question as @question" do
        put :update, {:id => question.to_param, :question => valid_attributes, :section_id => section.id, :survey_id => survey.id}, valid_session
        assigns(:question).should eq(question)
      end

      it "redirects to the question" do
        put :update, {:id => question.to_param, :question => valid_attributes, :section_id => section.id, :survey_id => survey.id}, valid_session
        response.should redirect_to([ :admin, survey, section, question])
      end
    end

    describe "with invalid params" do
      it "assigns the question as @question" do
        put :update, {:id => question.to_param, :question => { "code" => "" }, :section_id => section.id, :survey_id => survey.id}, valid_session
        assigns(:question).should eq(question)
      end

      it "should render template edit" do
        put :update, {:id => question.to_param, :question => { "code" => "" }, :section_id => section.id, :survey_id => survey.id}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested question" do
      question
      expect {
        delete :destroy, {:id => question.to_param, :section_id => section.id, :survey_id => survey.id}, valid_session
      }.to change(Question, :count).by(-1)
    end

    it "redirects to the questions list" do
      question
      delete :destroy, {:id => question.to_param, :section_id => section.id, :survey_id => survey.id}, valid_session
      response.should redirect_to(admin_survey_section_questions_url)
    end
  end

end
