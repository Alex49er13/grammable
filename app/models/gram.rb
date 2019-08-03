class Gram < ActiveRecord::Base
    mount_uploader :Picture, PictureUploader
    validates :message, presence: true
    validates :picture, presence: true
    belongs_to :model
    
end
