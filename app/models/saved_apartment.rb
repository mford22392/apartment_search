class SavedApartment < ActiveRecord::Base
  # this is a join table between lists and apartments
  belongs_to :apartment
  belongs_to :apartment_list 
  has_one :user, through: :apartment_list
end
