class CreateCardAnswers < ActiveRecord::Migration
  def change
    create_table :card_answers do |t|
      t.string :value
      t.references :card_question, index: true
      t.references :answer, index: true

      t.timestamps
    end
  end
end
