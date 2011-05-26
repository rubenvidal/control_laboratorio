class CreateHornos < ActiveRecord::Migration
  def self.up
    create_table :hornos do |t|
      t.string :codigo
      t.string :longitud
      t.string :descripcion
      t.timestamps
    end
  end

  def self.down
    drop_table :hornos
  end
end
