class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.boolean :disabled, :default => false
      t.timestamps
    end
  end
end
