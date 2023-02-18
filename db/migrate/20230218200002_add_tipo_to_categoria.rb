class AddTipoToCategoria < ActiveRecord::Migration[7.0]
  def change
    add_column :categoria, :tipo, :string
  end
end
