class Apartment < ActiveRecord::Base
  has_many :apartment_lists
  
end
