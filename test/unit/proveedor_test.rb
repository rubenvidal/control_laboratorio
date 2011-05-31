require 'test_helper'

class ProveedorTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Proveedor.new.valid?
  end
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

