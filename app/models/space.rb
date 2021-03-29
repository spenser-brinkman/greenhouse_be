class Space < ApplicationRecord
  has_many :plants
  belongs_to :user, optional: true

  validates :name, :humidity, :light, presence: true
  validates :humidity, :light, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
