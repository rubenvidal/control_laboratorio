class Medicion < ActiveRecord::Base
  belongs_to :horno
  has_many :valores
  attr_accessible :horno_id, :fecha, :operario, :velocidad_horno
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

