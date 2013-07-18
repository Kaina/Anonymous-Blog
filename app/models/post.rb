class Post < ActiveRecord::Base
  validates :post_body, :presence => true
  validates :post_title, :presence => true
  has_many :posts_tags
  has_many :tags, through: :posts_tags  
end
