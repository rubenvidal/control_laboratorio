class Quemador < ActiveRecord::Base
  belongs_to :horno
  has_many :valores
  attr_accessible :nombre, :cantidad_mecheros, :posicion, :valores_attributes
  validates_presence_of :nombre, :cantidad_mecheros, :posicion
  validates_numericality_of :cantidad_mecheros, :only_integer => true
  accepts_nested_attributes_for :valores,
    :reject_if => lambda { |a| a[:temperatura].blank? }, :allow_destroy => true
end

# == Schema Information
#
# Table name: quemadores
#
#  id                :integer         not null, primary key
#  horno_id          :integer
#  nombre            :string(255)
#  cantidad_mecheros :string(255)
#  posicion          :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

