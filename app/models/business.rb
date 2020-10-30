class Business < ApplicationRecord
  validates :name, :zipcode, :address, :phone, presence: true

  scope :search_by_name, -> (parameter) { where("LOWER(name) like ?", "%#{parameter.downcase}%") }
end
