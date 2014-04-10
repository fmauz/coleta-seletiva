class AddColumnAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :is_cpf, :boolean
    add_column :answers, :is_cnpj, :boolean
    add_column :answers, :is_cep, :boolean
    add_column :answers, :is_telefone, :boolean
    add_column :answers, :is_percent, :boolean
  end
end
