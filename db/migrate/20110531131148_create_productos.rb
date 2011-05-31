class CreateProductos < ActiveRecord::Migration
  def self.up
    drop_table :productos
    create_table :productos do |t|
      t.integer :proveedor_id
      t.string :referencia
      t.string :caracteristica
      t.timestamps
    end
  end

  def self.down
    drop_table :productos
  end
end
