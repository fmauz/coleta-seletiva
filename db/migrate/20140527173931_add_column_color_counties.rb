class AddColumnColorCounties < ActiveRecord::Migration
  def change
    add_column :counties, :color, :string
  end
end
