require 'test_helper'

class HornoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Horno.new.valid?
  end
end

# == Schema Information
#
# Table name: hornos
#
#  id          :integer         not null, primary key
#  codigo      :string(255)
#  longitud    :string(255)
#  descripcion :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

