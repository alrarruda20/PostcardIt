class Photo < ActiveRecord::Base

belongs_to :user
has_many :postcards, :dependent => :destroy
has_many :recipients, :through => :postcards, :source => :user

validates :user, :presence => true
validates :image, :presence => true

mount_uploader :image, ImageUploader

default_scope { order("created_at DESC") }
end
