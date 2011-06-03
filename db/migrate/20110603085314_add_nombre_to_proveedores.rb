class AddNombreToProveedores < ActiveRecord::Migration
  def self.up
    change_table :proveedores do |q|
      q.string :nombre
    end
  end

  def self.down
    change_table :proveedores do |q|
      q.remove :nombre
    end
  end
end
