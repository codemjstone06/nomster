class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :pictures
  

  geocoded_by :address
  after_validation :geocode


  validates :address, presence: true
  validates :description, presence: true
  validates :name, length: {minimum: 3 }
  
  
end
