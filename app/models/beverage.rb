class Beverage < ActiveRecord::Base

  attr_accessible :name, :image, :remote_image_url

  IMAGE_DIMENSIONS = [ 150, 150 ]

  mount_uploader :image, BeverageImageUploader

  has_many :orders

  validates :name, :presence => true,
                   :uniqueness => { :case_sensitive => false }

end
