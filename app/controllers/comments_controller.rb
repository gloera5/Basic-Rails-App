class CommentsController < ApplicationController
  def create
    @comment = current_user.commets.build(params.require(:commnet).permit(:body))
  end
end
