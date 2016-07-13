class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :hop

  validates :body, presence: true
end
