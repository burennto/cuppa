class Person < ActiveRecord::Base

  attr_accessible :name, :avatar, :remote_avatar_url

  AVATAR_DIMENSIONS = [ 150, 150 ]

  mount_uploader :avatar, AvatarUploader

  has_many :orders

  validates :name, :presence => true,
                   :uniqueness => { :case_sensitive => false }

  default_scope :order => 'name ASC'

end
