class Admin::FormSectionsController < Admin::AdminController
  before_action :set_form_section, only: [:show, :edit, :update, :destroy]
  respond_to :html

  # GET /form_sections
  # GET /form_sections.json
  def index
    @form_sections = FormSection.unscoped.all
    respond_with( @form_sections )
  end

  # GET /form_sections/1
  # GET /form_sections/1.json
  def show
    respond_with( @form_section )
  end

  # GET /form_sections/new
  def new
    @form_section = FormSection.new
    respond_with( @form_section )
  end

  # GET /form_sections/1/edit
  def edit
    respond_with( @form_section )
  end

  # POST /form_sections
  # POST /form_sections.json
  def create
    @form_section = FormSection.new(form_section_params)
    @form_section.save
    respond_with( [ :admin, @form_section] )
  end

  # PATCH/PUT /form_sections/1
  # PATCH/PUT /form_sections/1.json
  def update
    @form_section.update(form_section_params)
    respond_with( [ :admin, @form_section] )
  end

  # DELETE /form_sections/1
  # DELETE /form_sections/1.json
  def destroy
    @form_section.destroy
    respond_with( [ :admin, @form_section] )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_section
      @form_section = FormSection.unscoped.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_section_params
      params.require(:form_section).permit( :name, :form_section_id, :order )
    end
end
