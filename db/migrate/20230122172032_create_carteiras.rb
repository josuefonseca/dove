class CreateCarteiras < ActiveRecord::Migration[7.0]
  def change
    create_table :carteiras do |t|
      t.string :nome
      t.decimal :saldo, precision: 10, scale: 2
      t.string :cor

      t.timestamps
    end
  end
end
