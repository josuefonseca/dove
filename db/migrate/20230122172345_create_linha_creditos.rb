class CreateLinhaCreditos < ActiveRecord::Migration[7.0]
  def change
    create_table :linha_creditos do |t|
      t.string :descricao
      t.string :cor
      t.integer :dia_fechamento, null: true
      t.integer :dia_vencto, null: true
      t.datetime :data_ativacao, null: true
      t.datetime :data_encerramento, null: true

      t.timestamps
    end
  end
end
