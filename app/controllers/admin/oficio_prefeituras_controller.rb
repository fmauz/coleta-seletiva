class Admin::OficioPrefeiturasController < ApplicationController
  before_action :set_oficio_prefeitura, only: [ :show, :edit, :update, :destroy ]
  respond_to :html

  # GET /oficio_prefeituras
  # GET /oficio_prefeituras.json
  def index
    @oficio_prefeituras = OficioPrefeitura.unscoped.all
    respond_with( @oficio_prefeitura )
  end

  # GET /oficio_prefeituras/1
  # GET /oficio_prefeituras/1.json
  def show
    respond_with( @oficio_prefeitura )
  end

  # GET /oficio_prefeituras/new
  def new
    @oficio_prefeitura = OficioPrefeitura.new
    respond_with( @oficio_prefeitura )
  end

  # GET /oficio_prefeituras/1/edit
  def edit
    respond_with( @oficio_prefeitura )
  end

  # POST /oficio_prefeituras
  # POST /oficio_prefeituras.json
  def create
    @oficio_prefeitura = OficioPrefeitura.new(oficio_prefeitura_params)
    @oficio_prefeitura.save
    respond_with( [ :admin, @oficio_prefeitura] )
  end

  # PATCH/PUT /oficio_prefeituras/1
  # PATCH/PUT /oficio_prefeituras/1.json
  def update
    @oficio_prefeitura.update(oficio_prefeitura_params)
    respond_with( [ :admin, @oficio_prefeitura] )
  end

  # DELETE /oficio_prefeituras/1
  # DELETE /oficio_prefeituras/1.json
  def destroy
    @oficio_prefeitura.destroy
    respond_with( [ :admin, @oficio_prefeitura] )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oficio_prefeitura
      @oficio_prefeitura = OficioPrefeitura.unscoped.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oficio_prefeitura_params
      params.require( :oficio_prefeitura ).permit( :name, :description, :data_registro, :name_resp, :county_id )
    end
end