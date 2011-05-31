class Producto < ActiveRecord::Base
  attr_accessible :proveedor_id, :referencia, :caracteristica
end

# == Schema Information
#
# Table name: productos
#
#  id             :integer         not null, primary key
#  proveedor_id   :integer
#  referencia     :string(255)
#  caracteristica :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

