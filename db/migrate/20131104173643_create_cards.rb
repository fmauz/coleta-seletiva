class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :year
      t.string :month
      t.references :survey, index: true
      t.references :person, index: true
      t.references :county, index: true
      t.timestamps
    end
  end
end
