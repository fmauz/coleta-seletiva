class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :survey, index: true
      t.string :name
      t.string :help_block

      t.timestamps
    end
  end
end
