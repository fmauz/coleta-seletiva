class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.string :name
      t.string :code
      t.string :cnpj

      t.timestamps
    end
  end
end
