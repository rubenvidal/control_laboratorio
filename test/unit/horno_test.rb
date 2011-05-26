require 'test_helper'

class HornoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Horno.new.valid?
  end
end
