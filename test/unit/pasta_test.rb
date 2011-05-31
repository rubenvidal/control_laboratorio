require 'test_helper'

class PastaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Pasta.new.valid?
  end
end
