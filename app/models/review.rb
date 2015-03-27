class Review < ActiveRecord::Base
  RATINGS = [
    1,
    2,
    3,
    4,
    5
  ]

  belongs_to :restaurant

  validates :rating, presence: true, inclusion: { in: RATINGS }
  validates :body, presence: true
  validates_presence_of :restaurant
end
