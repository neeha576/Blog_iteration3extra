class Comment < ApplicationRecord
  resourcify
  validates :post, :body, presence: true
  belongs_to :post
  belongs_to :user
end
