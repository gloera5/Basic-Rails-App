class PostsController < ApplicationController
  def index
     @posts = policy_scope(Post) 
  end  

  def show
     @post = Post.find(params[:id])
     @comment = Comment.new
     @comments = @post.comments
     @topic = @post.topic
  end

  def new
     @topic = Topic.find(params[:topic_id])
     @post = Post.new
     authorize @post
  end

  def create
     @topic = Topic.find(params[:topic_id])
     @post = current_user.posts.build(params.require(:post).permit(:title, :body))
     authorize @post
     if @post.save
       @post.create_vote
       flash[:notice] = "Post was saved."
       redirect_to @post
     else
       flash[:error] = "There was an error saving the post. Please try again."
       render :new
     end
   end
  
  def edit
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:id])
    authorize @post
  end
  
   def update
     @topic = Topic.find(params[:topic_id])
     @post = Post.find(params[:id])
     authorize @post
     if @post.update_attributes(params.require(:post).permit(:title, :body))
       flash[:notice] = "Post was updated."
       redirect_to @post
     else
       flash[:error] = "There was an error saving the post. Please try again."
       render :edit
     end
   end
  
   def destroy
     @topic = Topic.find(params[:topic_id])
     @post = Post.find(params[:id])
     authorize @post
 
     if @post.destroy
       flash[:notice] = "\"#{@post.title}\" was deleted successfully."
       redirect_to @topic
     else
       flash[:error] = "There was an error deleting the post."
       render :show
     end
   end
end
