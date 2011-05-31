require 'test_helper'

class ComposicionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Composicion.new.valid?
  end
end

# == Schema Information
#
# Table name: composiciones
#
#  id          :integer         not null, primary key
#  prueba_id   :integer
#  producto_id :integer
#  porcentaje  :integer
#  comentario  :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

