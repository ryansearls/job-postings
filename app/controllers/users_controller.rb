class UsersController < ApplicationController

  def index
    posts = Post.all
    render json: {jobs: posts.as_json}
  end  

  def create
    user = User.new(
    name: params[:name],
    email: params[:email],
    phone_number: params[:phone_number]
    
    user.save
    render json: {message: "user created"}
    )
  end

end   