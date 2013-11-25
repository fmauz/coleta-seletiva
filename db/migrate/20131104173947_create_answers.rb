class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :answer_type, index: true
      t.references :question, index: true
      t.string :placeholder
      t.string :label_text
      t.string :help_block
      
      t.string :css_class
      t.string :query_string
      t.string :element_ajax
      t.string :ajax_url

      t.boolean :required, :default => false
      t.integer :min_length, :default => 1
      t.integer :max_length, :default => 25
      
      t.boolean :disabled
      t.boolean :number_only
      t.boolean :currency_only
      t.timestamps
    end
  end
end