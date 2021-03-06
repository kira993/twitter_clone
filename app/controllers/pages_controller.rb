#The pages controller contains all of the code for any page inside of /pages
class PagesController < ApplicationController

  #back-end code for pages/index
  def index
  end

  #back-end code for pages/home
  def home
    @posts = Post.all
    @newPost = Post.new
    following = Array.new
    for @f in current_user.following do
      following.push(@f.id)
    end


  end


  #back-end code for pages/profile
  def profile
    #grab the first_name from the URL
    if (User.find_by_first_name(params[:id]))
      @first_name = params[:id]
    else
      #redirect to 404 (root for now)
      redirect_to root_path, :notice => "User not found!"
    end

    @posts = Post.all.where("user_id = ?", User.find_by_first_name(params[:id]).id)
    @newPost = Post.new
    @toFollow = User.all.last(5)
  end

  #back-end code for pages/explore
  def explore
    @posts = Post.all
    @newPost = Post.new
    @toFollow = User.all.last(5)
  end
end
