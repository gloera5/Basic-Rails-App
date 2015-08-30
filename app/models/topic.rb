class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  
   scope :publicly_viewable, -> (user) {user ? all : where(public: true)}
   scope :privately_viewable, -> (user) {user ? all : where(public: false)}
end
