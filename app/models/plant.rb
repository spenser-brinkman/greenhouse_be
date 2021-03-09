class Plant < ApplicationRecord
  belongs_to :space, optional: true
  belongs_to :user, optional: true

  validates :species, :light_req, :humidity_req, :water_freq, :last_water, :last_fert, presence: true
  validates :light_req, :humidity_req, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}

  scope :unassigned, -> {where(space_id: nil)}
end
