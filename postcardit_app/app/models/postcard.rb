class Postcard < ActiveRecord::Base
belongs_to :user
belongs_to :photo

belongs_to :recipient

validates :photo, :presence => true
validates :message, :presence => true

default_scope { order("created_at DESC") }
end
