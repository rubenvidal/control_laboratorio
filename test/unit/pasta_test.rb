require 'test_helper'

class PastaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Pasta.new.valid?
  end
end

# == Schema Information
#
# Table name: pastas
#
#  id          :integer         not null, primary key
#  codigo      :string(255)
#  tipo_tierra :string(255)
#  descripcion :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

