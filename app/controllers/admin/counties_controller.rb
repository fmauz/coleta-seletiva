class Admin::CountiesController < Admin::AdminController
  before_action :set_county, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @counties = County.all
    respond_with(@counties)
  end

  def show
    respond_with(@county)
  end

  def new
    @county = County.new
    respond_with(@county)
  end

  def edit
  end

  def create
    @county = County.new(county_params)
    @county.save
    respond_with([:admin, @county])
  end

  def update
    @county.update(county_params)
    respond_with([:admin, @county])
  end

  def destroy
    @county.destroy
    respond_with([:admin, @county])
  end

  private
    def set_county
      @county = County.find(params[:id])
    end

    def county_params
      params.require(:county).permit(:name, :code, :cnpj)
    end
end
