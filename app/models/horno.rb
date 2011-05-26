class Horno < ActiveRecord::Base
  attr_accessible :codigo, :longitud, :descripcion, :quemadores_attributes
  has_many :quemadores, :dependent => :destroy
  has_many :mediciones
  accepts_nested_attributes_for :mediciones,
    :reject_if => lambda { |a| a[:fecha].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :quemadores,
    :reject_if => lambda { |a| a[:nombre].blank? }, :allow_destroy => true
end

# == Schema Information
#
# Table name: hornos
#
#  id          :integer         not null, primary key
#  codigo      :string(255)
#  longitud    :string(255)
#  descripcion :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

