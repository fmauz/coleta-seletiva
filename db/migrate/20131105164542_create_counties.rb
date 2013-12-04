class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.string :name
      t.string :code
      t.string :cnpj
      t.string :logradouro_prefeitura, default: ""
      t.string :numero_prefeitura, default: ""
      t.string :complemento_prefeitura, default: ""
      t.string :bairro_prefeitura, default: ""
      t.string :populacao_total_municipio, default: ""
      t.string :populacao_urbana, default: ""
      t.string :extensao_territorial, default: ""
      t.string :indice_destinacao, default: ""
      t.string :n_bairros, default: ""
      t.timestamps
    end
  end
end
