class AddHornoIdToPruebas < ActiveRecord::Migration
  def self.up
    change_table :pruebas do |q|
      q.integer :horno_id
    end
  end

  def self.down
    change_table :pruebas do |q|
      q.remove :horno_id
    end
  end
end
