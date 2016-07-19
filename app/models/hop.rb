class Hop < ActiveRecord::Base
  has_many :comments
  has_many :favorites
  has_many :user_favorites, through: :favorites, source: :user

  def self.find_hop(hop_search)
    search = hop_search.map { | name | "%#{ name.downcase }%" }
    return hops = Hop.where( "lower(name) LIKE ANY ( array[?] )", search ).to_a
  end
end
