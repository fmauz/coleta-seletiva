class Admin::AnswersController < Admin::AdminController
  before_action :set_survey
  before_action :set_section
  before_action :set_question
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  respond_to :html
  
  # GET /answers
  # GET /answers.json
  def index
    @answers = @question.answers
    respond_with( @answers )
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    respond_with( @answer )
  end

  # GET /answers/new
  def new
    @answer = @question.answers.build
    @answer.answer_collections.build
    respond_with( @answer )
  end

  # GET /answers/1/edit
  def edit
    respond_with( @answer )
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = @question.answers.build(answer_params)
    @answer.save
    respond_with( [ :admin, @survey, @section, @question, @answer ] )
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    @answer.update(answer_params)
    respond_with( [ :admin, @survey, @section, @question, @answer ] )
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_with( [ :admin, @survey, @section, @question, @answer ] )
  end

  private
    def set_survey
      @survey = Survey.find( params[:survey_id] )
    end

    def set_section
      @section = @survey.sections.find( params[:section_id] )
    end

    def set_question
      @question = @section.questions.find( params[:question_id] )
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = @question.answers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:answer_type_id, :placeholder, :label_text, :help_block, :css_class, :disabled, :required, :query_string, :element_ajax, :ajax_url, answer_collections_attributes: [ :text, :value, :_destroy ])
    end
end
