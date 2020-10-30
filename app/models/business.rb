class Business < ApplicationRecord
  validates :first_name, :last_name, presence: true

  scope :search_by_name, -> (parameter) { where("LOWER(name) like ?", "%#{parameter.downcase}%") }
end
