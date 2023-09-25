class CountryOrder < ApplicationRecord
  belongs_to :country
  validates :order, presence: true, uniqueness: true
end
