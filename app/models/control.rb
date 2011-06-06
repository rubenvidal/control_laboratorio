class Control < ActiveRecord::Base
  belongs_to :prueba
  validates_presence_of :prueba_id, :valor_x, :valor_y, :valor_z
end

# == Schema Information
#
# Table name: controles
#
#  id         :integer         not null, primary key
#  prueba_id  :integer
#  valor_x    :integer
#  valor_y    :integer
#  valor_z    :integer
#  created_at :datetime
#  updated_at :datetime
#

