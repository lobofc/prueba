class Usuario < ApplicationRecord

  before_save do
  self.category.gsub!(/[\[\]\"]/, "") if attribute_present?("category")
end
end
