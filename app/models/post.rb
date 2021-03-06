class Post < ActiveRecord::Base
  has_many :comments 
  has_many :votes, dependent: :destroy
  belongs_to :user
  belongs_to :topic
  
  default_scope { order('rank DESC') }
  
  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  #validates :topic, presence: true
  #validates :user, presence: true
  
  def up_votes
     votes.where(value: 1).count
  end
  
  def down_votes
     votes.where(value: -1).count
  end
  
  def points
    up_votes - down_votes
  end
  
  def update_rank
     age_in_days = (created_at - Time.new(1970,1,1)) / (60 * 60 * 24) # 1 day in seconds
     new_rank = points + age_in_days
 
     update_attribute(:rank, new_rank)
  end
  
  after_create :create_vote
  
  private
  
  def create_vote
    user.votes.create(value: 1, post: self)
  end
end
