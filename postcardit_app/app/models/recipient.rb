class Recipient < ActiveRecord::Base
  belongs_to :user

  has_many :postcards

  validates :user, :presence => true
  validates :address, :presence => true

  default_scope { order("created_at DESC") }
end
