class Composicion < ActiveRecord::Base
  belongs_to :producto
  belongs_to :prueba
  attr_accessible :prueba_id, :producto_id, :porcentaje, :comentario
end

# == Schema Information
#
# Table name: composiciones
#
#  id          :integer         not null, primary key
#  prueba_id   :integer
#  producto_id :integer
#  porcentaje  :integer
#  comentario  :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

