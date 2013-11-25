class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :section, index: true
      t.boolean :multiple_answer
      t.string :code
      t.string :content
      t.string :help_block
      t.string :css_class
      t.boolean :clear_question
      t.timestamps
    end
  end
end
