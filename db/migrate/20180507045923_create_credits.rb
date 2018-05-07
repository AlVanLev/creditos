class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.string :credito
      t.integer :saldoInicial
      t.integer :tasaInteres
      t.date :plazo
      t.date :fechaInicio
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
