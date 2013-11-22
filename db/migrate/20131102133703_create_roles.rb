class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end

    Role.create( name: "Desenvolvedor" )
    Role.create( name: "Entrevistador" )
  end
end
