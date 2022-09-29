class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true 

  has_many :kids
  has_many :familytrees 
end
