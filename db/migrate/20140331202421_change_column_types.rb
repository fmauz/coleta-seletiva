class ChangeColumnTypes < ActiveRecord::Migration
  def change
    change_column :cards, :year, 'integer USING CAST(column_name AS integer)'
    change_column :cards, :month, 'integer USING CAST(column_name AS integer)'
  end
end
