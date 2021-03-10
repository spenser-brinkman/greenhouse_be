class User < ApplicationRecord
  
  validates :username, uniqueness: true, presence: true
  # validate :password_complexity
  
  validates_confirmation_of :password
  
  has_secure_password

  has_many :spaces
  has_many :plants
  
  # def password_complexity
  #   return if password.blank? || password =~ /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,30}$/
  #   errors.add :password, "does not meet requirements."
  # end

end