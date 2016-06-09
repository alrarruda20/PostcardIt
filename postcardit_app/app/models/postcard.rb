class Postcard < ActiveRecord::Base
belongs_to :user
belongs_to :photo

has_many :recipients

validates :photo, :presence => true
validates :message, :presence => true

default_scope { order("created_at DESC") }
end
