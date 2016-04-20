class ApartmentList < ActiveRecord::Base
  has_many :apartments
  belongs_to :map
  has_one :user, through: :map
end
