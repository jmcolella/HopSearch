class User < ActiveRecord::Base
  has_secure_password

  has_many :comments
  has_many :favorites
  has_many :favorited_hops, through: :favorites, source: :hop
end
