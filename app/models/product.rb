class Product < ActiveRecord::Base
    include ImageUploader::Attachment(:image)
    # validates :title, presence: true
end
