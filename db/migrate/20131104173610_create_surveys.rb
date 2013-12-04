class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :form_type
      t.references :form_section, index: true
      t.boolean :disabled, :default => false
      t.timestamps
    end
  end
end
