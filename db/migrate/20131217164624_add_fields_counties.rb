class AddFieldsCounties < ActiveRecord::Migration
  def change
    add_column :counties, :domicilios_total, :string, :default => "0"
    add_column :counties, :populacao_rural, :string, :default => "0"
    add_column :counties, :cep_prefeitura, :string, :default => "0"
  end
end
