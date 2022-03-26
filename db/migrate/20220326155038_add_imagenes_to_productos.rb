class AddImagenesToProductos < ActiveRecord::Migration[7.0]
  def change
    add_column :productos, :imágenes, :string, array: true, default: []
  end
end
