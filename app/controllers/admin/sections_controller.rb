class Admin::SectionsController < Admin::AdminController
  before_action :set_survey
  before_action :set_section, only: [:show, :edit, :update, :destroy]
  respond_to :html

  # GET /sections
  # GET /sections.json
  def index
    @sections = @survey.sections
    respond_with( @sections )
  end

  # GET /sections/1
  # GET /sections/1.json
  def show
    respond_with( @section )
  end

  # GET /sections/new
  def new
    @section = @survey.sections.build
    respond_with( @section )
  end

  # GET /sections/1/edit
  def edit
    respond_with( @section )
  end

  # POST /sections
  # POST /sections.json
  def create
    @section = @survey.sections.build(section_params)
    @section.save
    respond_with( [ :admin, @survey, @section ] )
  end

  # PATCH/PUT /sections/1
  # PATCH/PUT /sections/1.json
  def update
    @section.update( section_params )
    respond_with( [ :admin, @survey, @section] )
  end

  # DELETE /sections/1
  # DELETE /sections/1.json
  def destroy
    @section.destroy
    respond_with( [ :admin, @survey, @section] )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = @survey.sections.find(params[:id])
    end

    def set_survey
      @survey = Survey.find( params[:survey_id] )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:section).permit(:survey_id, :name, :help_block, :order)
    end
end
