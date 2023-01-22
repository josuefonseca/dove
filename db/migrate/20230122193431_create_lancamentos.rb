class CreateLancamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :lancamentos do |t|
      t.string :descricao
      t.decimal :valor_previsto, precision: 10, scale: 2, null: true
      t.decimal :valor_efetivo,  precision: 10, scale: 2, null: true
      t.datetime :data_prevista, null: true
      t.datetime :data_efetiva, null: true
      
      t.belongs_to :categoria, primary_key: "categoria_id", null: true
      t.belongs_to :carteira, primary_key: "carteira_id", null: true
      t.belongs_to :fatura, primary_key: "fatura_id", null: true

      t.timestamps
    end
  end
end
