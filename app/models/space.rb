class Space < ApplicationRecord
  has_many :plants

  validates :name, :humidity, :light, presence: true
  validates :name, uniqueness: true
  validates :humidity, :light, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
