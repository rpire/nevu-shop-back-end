class AddUsuarioRefToProductos < ActiveRecord::Migration[7.0]
  def change
    add_reference :productos, :usuario, null: false, foreign_key: true
  end
end
