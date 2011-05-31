class CreatePruebas < ActiveRecord::Migration
  def self.up
    drop_table :pruebas
    create_table :pruebas do |t|
      t.integer :pasta_id
      t.datetime :fecha
      t.string :partida
      t.timestamps
    end
  end

  def self.down
    drop_table :pruebas
  end
end
