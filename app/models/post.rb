class Post < ActiveRecord::Base
  mount_uploaders :images, ImagesUploader
  has_many :comments
  belongs_to :user
end
