class AddCifToProveedores < ActiveRecord::Migration
  def self.up
    change_table :proveedores do |q|
      q.string :cif
    end
  end

  def self.down
    change_table :proveedores do |q|
      q.remove :cif
    end
  end
end
