class User < ActiveRecord::Base
  has_secure_password
  has_one :map 
  has_many :apartment_lists, through: :map
  has_many :saved_apartments, through: :apartment_lists

  validates :password,
    :length => { :minimum => 8 }

  validates_confirmation_of :password

  
end
