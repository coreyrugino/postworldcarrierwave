class Post < ActiveRecord::Base
  mount_uploaders :images, ImagesUploader
  has_many :comments
  belongs_to :user

  def remove_image
    # binding.pry
  end
end
