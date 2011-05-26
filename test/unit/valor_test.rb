require 'test_helper'

class ValorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: valores
#
#  id          :integer         not null, primary key
#  quemador_id :integer
#  medicion_id :integer
#  temperatura :integer
#  presion     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

