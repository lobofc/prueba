# == Schema Information
#
# Table name: usuarios
#
#  id         :integer          not null, primary key
#  video      :string
#  contenido  :string
#  category   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Usuario < ApplicationRecord

  before_save do
  self.category.gsub!(/[\[\]\"]/, "") if attribute_present?("category")
end
end
