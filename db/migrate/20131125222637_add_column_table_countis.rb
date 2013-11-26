class AddColumnTableCountis < ActiveRecord::Migration
  def change
    add_column :counties, :logradouro_prefeitura, :string
    add_column :counties, :numero_prefeitura, :string
    add_column :counties, :complemento_prefeitura, :string
    add_column :counties, :bairro_prefeitura, :string
    add_column :counties, :populacao_total_municipio, :string
    add_column :counties, :populacao_urbana, :string
    add_column :counties, :extensao_territorial, :string
    add_column :counties, :indice_destinacao, :string
    add_column :counties, :n_bairros, :string
  end
end
