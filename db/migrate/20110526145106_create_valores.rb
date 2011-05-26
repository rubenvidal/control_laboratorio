class CreateValores < ActiveRecord::Migration
  def self.up
    create_table :valores do |t|
      t.integer :quemador_id
      t.integer :medicion_id
      t.integer :temperatura
      t.integer :presion

      t.timestamps
    end
  end

  def self.down
    drop_table :valores
  end
end
