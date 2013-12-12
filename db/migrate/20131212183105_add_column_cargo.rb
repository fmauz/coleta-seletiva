class AddColumnCargo < ActiveRecord::Migration
  def change
    add_column :oficio_prefeituras, :cargo, :string
  end
end
