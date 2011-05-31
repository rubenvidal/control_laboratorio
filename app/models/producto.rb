class Producto < ActiveRecord::Base
  has_many :composiciones, :dependent => :destroy
  belongs_to :proveedor
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

