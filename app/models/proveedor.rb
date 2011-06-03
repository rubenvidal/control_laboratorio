class Proveedor < ActiveRecord::Base
  has_many :productos
  attr_accessible :codigo_proveedor, :telefono, :direccion, :contacto, :nombre, :cif
  validates_presence_of :codigo_proveedor, :telefono, :direccion, :nombre, :cif
end



# == Schema Information
#
# Table name: proveedores
#
#  id               :integer         not null, primary key
#  codigo_proveedor :string(255)
#  telefono         :string(255)
#  direccion        :string(255)
#  contacto         :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  nombre           :string(255)
#  cif              :string(255)
#

