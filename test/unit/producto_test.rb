require 'test_helper'

class ProductoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Producto.new.valid?
  end
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

