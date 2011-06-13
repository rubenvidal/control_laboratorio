class Pasta < ActiveRecord::Base
  paginates_per 1
  has_many :pruebas, :dependent => :destroy
  has_many :hornos, :through => :pruebas
  has_many :quemadores, :through => :hornos
  attr_accessible :codigo, :tipo_tierra, :descripcion, :pruebas_attributes, :id
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

