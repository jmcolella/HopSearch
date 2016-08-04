class User < ActiveRecord::Base
  has_secure_password

  has_many :comments
  has_many :favorites
  has_many :favorited_hops, through: :favorites, source: :hop

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true

  def favorite?(hop)
    self.favorited_hops.include?(hop)
  end

end
