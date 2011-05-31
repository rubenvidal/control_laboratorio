class Pasta < ActiveRecord::Base
  attr_accessible :codigo, :tipo_tierra, :descripcion
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

