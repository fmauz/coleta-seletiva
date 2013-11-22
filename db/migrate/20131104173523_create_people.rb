class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
