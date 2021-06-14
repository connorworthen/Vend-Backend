class SessionsController < ApplicationController

  before_action :authorized, only: [:auto_login]

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: { user: UserSerializer.new(@user) }, status: :accepted
    else
      render json: {error: "Email or password don't match. Please try again.", status: :unauthorized}
    end
  end

  def auto_login
    render json: @user
  end


  private 
  
  def session_params
    params.require(:user).permit(:email, :password)
  end
end