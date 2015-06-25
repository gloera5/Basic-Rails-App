class PostPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

  def index?
    true
  end
  def index
    @posts = PostPolicy::Scope.new(current_user, Post).resolve
  end
  
  def new?
    true
  end
 
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.admin?
        scope.all
      else
        scope.where(:published => true)
      end
    end
    
  def update?
    true
  end
end
end