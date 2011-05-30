class Valor < ActiveRecord::Base
  belongs_to :medicion
  belongs_to :quemador
  validates_presence_of :quemador_id, :temperatura
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

