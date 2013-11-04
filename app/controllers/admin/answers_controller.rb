class Admin::AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  respond_to :html
  
  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.all
    respond_with( @answers )
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    respond_with( @answer )
  end

  # GET /answers/new
  def new
    @answer = Answer.new
    respond_with( @answer )
  end

  # GET /answers/1/edit
  def edit
    respond_with( @answer )
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)
    @answer.save
    respond_with( @answer )
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    @answer.update(answer_params)
    respond_with( @answer )
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_with( @answer )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:answer_type_id, :placeholder, :label_text, :help_block)
    end
end
