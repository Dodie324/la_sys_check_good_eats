class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
end
