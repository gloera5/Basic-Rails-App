class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(params.require(:comment).permit(:body))
    authorize @comment
  end
  
  def destroy
     @comment = Comment.find(params[:id])
     @post = @comment.post
     @topic = @post.topic
 
     authorize @comment
     if @comment.destroy
       flash[:notice] = "Comment was removed."
       redirect_to [@topic, @post]
     else
       flash[:error] = "Comment couldn't be deleted. Try again."
       redirect_to [@topic, @post]
     end
   end
  
   respond_to do |format|
       format.html
       format.js
   end
end
