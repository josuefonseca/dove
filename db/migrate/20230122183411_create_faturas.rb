class CreateFaturas < ActiveRecord::Migration[7.0]
  def change
    create_table :faturas do |t|
      t.string :referencia
      t.belongs_to :linha_credito, foreign_key: "linha_credito_id"

      t.timestamps
    end
  end
end
