class Admin::QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  respond_to :html

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
    respond_with( @questions )
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    respond_with( @question )
  end

  # GET /questions/new
  def new
    @question = Question.new
    respond_with( @question )
  end

  # GET /questions/1/edit
  def edit
    respond_with( @question )
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.save
    respond_with( @question )
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    @question.update(question_params)
    respond_with( @question )
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_with( @question )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:section_id, :multiple_answer, :code, :content, :help_block, :css_class)
    end
end
