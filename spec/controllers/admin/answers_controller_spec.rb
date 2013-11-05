require 'spec_helper'

describe Admin::AnswersController do

  let(:answer) { FactoryGirl.create(:answer) }
  let(:question) { answer.question }
  let(:section) { question.section }
  let(:survey) { section.survey }
  let(:answer_type ) { FactoryGirl.create(:answer_type) }

  let(:valid_attributes) { FactoryGirl.attributes_for( :answer ).merge!( { answer_type_id: answer_type.id } ) }
  let(:valid_session) { {} }
  let(:params_url){ { :question_id => question.id, :section_id => section.id, :survey_id => survey.id } }

  describe "GET index" do
    it "assigns all answers as @answers" do
      get :index, params_url, valid_session
      assigns(:answers).should eq([answer])
    end
  end

  describe "GET show" do
    it "assigns the requested answer as @answer" do
      get :show, params_url.merge!( {:id => answer.to_param} ), valid_session
      assigns(:answer).should eq(answer)
    end
  end

  describe "GET new" do
    it "assigns a new answer as @answer" do
      get :new, params_url, valid_session
      assigns(:answer).should be_a_new(Answer)
    end
  end

  describe "GET edit" do
    it "assigns the requested answer as @answer" do
      get :edit, params_url.merge!({:id => answer.to_param}), valid_session
      assigns(:answer).should eq(answer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Answer" do
        expect {
          post :create, params_url.merge!({:answer => valid_attributes}), valid_session
        }.to change(Answer, :count).by(2)
      end

      it "assigns a newly created answer as @answer" do
        post :create, params_url.merge!({:answer => valid_attributes}), valid_session
        assigns(:answer).should be_a(Answer)
        assigns(:answer).should be_persisted
      end

      it "redirects to the created answer" do
        post :create, params_url.merge!({:answer => valid_attributes}), valid_session
        response.should redirect_to( [ :admin, survey, section, question, Answer.last ])
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved answer as @answer" do
        Answer.any_instance.stub(:save).and_return(false)
        post :create, params_url.merge!({:answer => { "label_text" => "invalid value" }}), valid_session
        assigns(:answer).should be_a_new(Answer)
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested answer" do
        Answer.any_instance.should_receive(:update).with({ "label_text" => "" })
        put :update, params_url.merge!({:id => answer.to_param, :answer => { "label_text" => "" }}), valid_session
      end

      it "assigns the requested answer as @answer" do
        put :update, params_url.merge!({:id => answer.to_param, :answer => valid_attributes}), valid_session
        assigns(:answer).should eq(answer)
      end

      it "redirects to the answer" do
        put :update, params_url.merge!({:id => answer.to_param, :answer => valid_attributes}), valid_session
        response.should redirect_to([:admin, survey, section, question, answer])
      end
    end

    describe "with invalid params" do
      it "assigns the answer as @answer" do
        Answer.any_instance.stub(:save).and_return(false)
        put :update, params_url.merge!({:id => answer.to_param, :answer => { "answer_type_id" => "" }}), valid_session
        assigns(:answer).should eq(answer)
      end

      it "should render edit" do
        Answer.any_instance.stub(:save).and_return(false)
        put :update, params_url.merge!({:id => answer.to_param, :answer => { "answer_type_id" => "" }}), valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested answer" do
      answer
      expect {
        delete :destroy, params_url.merge!({:id => answer.to_param}), valid_session
      }.to change(Answer, :count).by(-1)
    end

    it "redirects to the answers list" do
      answer
      delete :destroy, params_url.merge!({:id => answer.to_param}), valid_session
      response.should redirect_to( admin_survey_section_question_answers_url )
    end
  end

end
