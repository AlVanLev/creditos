class RemoveContrasenaFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :contrasena, :string
  end
end
