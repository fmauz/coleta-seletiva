class AddColumnAnswersKg < ActiveRecord::Migration
  def change
    add_column :answers, :is_kilos, :boolean
  end
end
