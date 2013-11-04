class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :answer_type, index: true
      t.references :question, index: true
      t.string :placeholder
      t.string :label_text
      t.string :help_block

      t.timestamps
    end
  end
end
