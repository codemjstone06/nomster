class Picture < ApplicationRecord
  
  belongs_to :place

  validates :caption, presence: true

  mount_uploader :foto, PhotoUploader
  mount_uploader :photo, PhotoUploader
end
