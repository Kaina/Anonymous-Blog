class Post < ActiveRecord::Base
  validates :post_body, :presence => true
  validates :post_title, :presence => true
  has_many :post_tags
  has_many :tags, through: :post_tags  
end
