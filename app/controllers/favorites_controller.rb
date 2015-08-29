class FavoritesController < ApplicationController
  def create
     post = Post.find(params[:post_id])
     favorite = current_user.favorites.build(post: post)
     authorize favorite
     if favorite.save
        flash[:notice] = "Favorited"
        redirect_to [post.topic, post]
     else
        flash[:notice] = "Failed"
        redirect_to [post.topic, post]
     end
   end
  
  def destroy
     post = Post.find(params[:post_id])
     favorite = current_user.favorites.build(post: post)
     authorize favorite
    if favorite.destroy
       flash[:notice] = "Favorited"
       redirect_to @post
    else
       flash[:notice] = "Failed"
       redirect_to @post
    end
  end
end
