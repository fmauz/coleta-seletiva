class Admin::SurveysController < Admin::AdminController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  respond_to :html

  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.unscoped.all
    respond_with( @surveys )
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
    respond_with( @survey )
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
    respond_with( @survey )
  end

  # GET /surveys/1/edit
  def edit
    respond_with( @survey )
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)
    @survey.save
    respond_with( [ :admin, @survey] )
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    @survey.update(survey_params)
    respond_with( [ :admin, @survey] )
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_with( [ :admin, @survey] )
  end

  def clone
    @survey = Survey.unscoped.find( params[:survey_id] )
    @survey_clone = Survey.unscoped.find( params[:survey_base] )

    @survey_clone.sections.each do |section|
      sec = section.dup
      sec.survey_id = @survey.id
      sec.save
      section.questions.each do |question|
        que = question.dup
        que.section_id = sec.id
        que.save
        question.answers.each do |answer|
          ans = answer.dup
          ans.question_id = que.id
          ans.save
          answer.answer_collections.each do |ans_collection|
            ansc = ans_collection.dup
            ansc.answer_id = ans.id
            ansc.save
          end
        end
      end
    end
    respond_with( [ :admin, @survey] )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.unscoped.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit( :name, :form_type, :disabled, :form_section_id, :archive )
    end
end
