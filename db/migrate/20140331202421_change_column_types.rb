class ChangeColumnTypes < ActiveRecord::Migration
  def change
    change_column :cards, :year, :integer
    change_column :cards, :month, :integer
  end
end
