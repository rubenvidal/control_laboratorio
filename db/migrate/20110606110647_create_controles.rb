class CreateControles < ActiveRecord::Migration
  def self.up
    create_table :controles do |t|
      t.integer :prueba_id
      t.integer :valor_x
      t.integer :valor_y
      t.integer :valor_z

      t.timestamps
    end
  end

  def self.down
    drop_table :controles
  end
end
