class AddFieldArchive < ActiveRecord::Migration
  def change
    add_attachment :surveys, :archive
  end
end
