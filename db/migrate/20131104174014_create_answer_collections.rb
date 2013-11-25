class CreateAnswerCollections < ActiveRecord::Migration
  def change
    create_table :answer_collections do |t|
      t.references :answer, index: true
      t.string :text
      t.string :value
      t.string :event_js

      t.timestamps
    end
  end
end
