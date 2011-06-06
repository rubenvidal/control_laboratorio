require 'test_helper'

class PruebaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Prueba.new.valid?
  end
end


# == Schema Information
#
# Table name: pruebas
#
#  id         :integer         not null, primary key
#  pasta_id   :integer
#  fecha      :datetime
#  partida    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  horno_id   :integer
#

