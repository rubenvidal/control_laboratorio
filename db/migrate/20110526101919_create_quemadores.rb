class CreateQuemadores < ActiveRecord::Migration
  def self.up
    create_table :quemadores do |t|
      t.integer :horno_id
      t.string :nombre
      t.string :cantidad_mecheros
      t.string :posicion

      t.timestamps
    end
  end

  def self.down
    drop_table :quemadores
  end
end
