class Proveedor < ActiveRecord::Base
  attr_accessible :codigo_proveedor, :telefono, :direccion, :contacto
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
#

