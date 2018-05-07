class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :usuario
      t.string :contrasena
      t.string :email

      t.timestamps null: false
    end
  end
end
