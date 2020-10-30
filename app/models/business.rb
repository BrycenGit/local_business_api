class Business < ApplicationRecord

  scope :search_by_name, -> (parameter) { where("LOWER(name) like ?", "%#{parameter.downcase}%") }
end
