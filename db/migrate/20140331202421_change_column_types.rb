class ChangeColumnTypes < ActiveRecord::Migration
  def change
    change_column :cards, :year, 'integer USING CAST(year AS integer)'
    change_column :cards, :month, 'integer USING CAST(month AS integer)'
  end
end
