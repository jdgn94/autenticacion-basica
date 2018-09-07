class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :ingreso
      t.integer :retiro
      t.integer :dinero_disponible

      t.timestamps
    end
  end
end
