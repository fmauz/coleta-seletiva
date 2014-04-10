class AddColumnDateMask < ActiveRecord::Migration
  def change
    add_column :answers, :is_short_date, :boolean
  end
end
