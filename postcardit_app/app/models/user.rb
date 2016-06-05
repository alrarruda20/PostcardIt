class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :photos, :dependent => :destroy
has_many :postcards, :dependent => :destroy
has_many :recipients, :through => :postcards, :source => :photo

validates :username, :presence => true, :uniqueness => true
end
