require 'test_helper'

class MedicionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Medicion.new.valid?
  end
end

# == Schema Information
#
# Table name: mediciones
#
#  id              :integer         not null, primary key
#  horno_id        :integer
#  fecha           :datetime
#  operario        :string(255)
#  velocidad_horno :integer
#  created_at      :datetime
#  updated_at      :datetime
#

