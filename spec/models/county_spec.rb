require 'spec_helper'

describe County do
  it { should respond_to :name }
  it { should respond_to :code }
  it { should respond_to :cnpj }
  it { should respond_to :logradouro_prefeitura }
  it { should respond_to :numero_prefeitura }
  it { should respond_to :complemento_prefeitura }
  it { should respond_to :bairro_prefeitura }
  it { should respond_to :populacao_total_municipio }
  it { should respond_to :populacao_urbana }
  it { should respond_to :extensao_territorial }
  it { should respond_to :indice_destinacao }
  it { should respond_to :n_bairros }

  it { should have_many :cards }

  it { should validate_presence_of :name }
  it { should validate_presence_of :code }
  it { should validate_presence_of :cnpj }
end
