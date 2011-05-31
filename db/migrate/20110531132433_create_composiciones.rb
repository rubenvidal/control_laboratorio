class CreateComposiciones < ActiveRecord::Migration
  def self.up
    create_table :composiciones do |t|
      t.integer :prueba_id
      t.integer :producto_id
      t.integer :porcentaje
      t.string :comentario
      t.timestamps
    end
  end

  def self.down
    drop_table :composiciones
  end
end
