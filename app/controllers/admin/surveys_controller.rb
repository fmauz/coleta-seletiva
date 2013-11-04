class Admin::SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  respond_to :html

  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.all
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:name)
    end
end
