class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :comments
  has_many :posts
end
