class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :survey, index: true
      t.references :person, index: true

      t.timestamps
    end
  end
end
