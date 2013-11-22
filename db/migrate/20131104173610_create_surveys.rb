class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :type
      t.boolean :disabled, :default => false
      t.timestamps
    end
  end
end
