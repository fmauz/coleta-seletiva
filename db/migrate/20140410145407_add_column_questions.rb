class AddColumnQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :order, :integer, default: 0
  end
end
