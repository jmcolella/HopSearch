class Hop < ActiveRecord::Base
  has_many :comments
  has_many :favorites
  has_many :user_favorites, through: :favorites, source: :user
end
