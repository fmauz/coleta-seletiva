class CreateOficioPrefeituras < ActiveRecord::Migration
  def change
    create_table :oficio_prefeituras do |t|
      t.string :name
      t.text :description
      t.date :data_registro
      t.string :name_resp
      t.references :county, index: true
      t.timestamps
    end
  end
end
