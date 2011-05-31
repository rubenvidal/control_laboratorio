class CreateProveedores < ActiveRecord::Migration
  def self.up
    drop_table :proveedores
    create_table :proveedores do |t|
      t.string :codigo_proveedor
      t.string :telefono
      t.string :direccion
      t.string :contacto
      t.timestamps
    end
  end

  def self.down
    drop_table :proveedores
  end
end
