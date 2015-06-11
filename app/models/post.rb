class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  
  default_scope { order('created_at DESC') }
  scope :ordered_by_title, -> { order.where('posts') }
  scope :ordered_by_reverse_created_at, -> { default_scope.order!('created_at DESC') }
end
