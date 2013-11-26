class CreateFormSections < ActiveRecord::Migration
  def change
    create_table :form_sections do |t|
      t.string :name
      t.references :form_section, index: true
      t.integer :order

      t.timestamps
    end
  end
end
