class CreateCardQuestions < ActiveRecord::Migration
  def change
    create_table :card_questions do |t|
      t.references :card, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
