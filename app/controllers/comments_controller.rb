class CommentsController < ApplicationController
  def create
    @comment = current_user.commets.build(params.require(:comment).permit(:body))
    authorize @comment
  end
  
  def destroy
     @post = @topic.posts.find(params[:post_id])
     @comment = @post.comments.find(params[:id])
 
     authorize @comment
     if @comment.destroy
       flash[:notice] = "Comment was removed."
       redirect_to [@topic, @post]
     else
       flash[:error] = "Comment couldn't be deleted. Try again."
       redirect_to [@topic, @post]
     end
   end
end
