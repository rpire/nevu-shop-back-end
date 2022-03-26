class CreateProductos < ActiveRecord::Migration[7.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripción
      t.decimal :precio, precision: 10, scale: 2

      t.timestamps
    end
  end
end
