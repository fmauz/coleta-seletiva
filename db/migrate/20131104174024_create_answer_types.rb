class CreateAnswerTypes < ActiveRecord::Migration
  def change
    create_table :answer_types do |t|
      t.string :name

      t.timestamps
    end

    AnswerType.create name: "Input Text"
    AnswerType.create name: "CheckBoxes"
    AnswerType.create name: "Radios"
    AnswerType.create name: "Select"
  end
end
