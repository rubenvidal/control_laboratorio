class Prueba < ActiveRecord::Base
  belongs_to :pasta
  has_many :composiciones, :dependent => :destroy
  attr_accessible :pasta_id, :fecha, :partida
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
#

