class CreateMediciones < ActiveRecord::Migration
  def self.up
    create_table :mediciones do |t|
      t.integer :horno_id
      t.datetime :fecha
      t.string :operario
      t.integer :velocidad_horno
      t.timestamps
    end
  end

  def self.down
    drop_table :mediciones
  end
end
