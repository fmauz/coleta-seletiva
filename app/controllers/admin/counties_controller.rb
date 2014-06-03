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
      params.require(:county).permit(:name, :color, :code, :cnpj, :logradouro_prefeitura, :numero_prefeitura, :complemento_prefeitura, :bairro_prefeitura, :populacao_total_municipio, :populacao_urbana, :extensao_territorial, :indice_destinacao, :n_bairros, :cep_prefeitura, :populacao_rural, :domicilios_total)
    end
end
