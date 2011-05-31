class CreatePastas < ActiveRecord::Migration
  def self.up
    create_table :pastas do |t|
      t.string :codigo
      t.string :tipo_tierra
      t.string :descripcion
      t.timestamps
    end
  end

  def self.down
    drop_table :pastas
  end
end
