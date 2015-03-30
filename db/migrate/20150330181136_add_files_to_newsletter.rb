class AddFilesToNewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :name, :string
    add_column :newsletters, :profissao, :string
    add_column :newsletters, :instituicao, :string
  end
end
