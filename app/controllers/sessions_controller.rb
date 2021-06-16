class SessionsController < ApplicationController

  before_action :authorized, only: [:auto_login]

  def login
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      token = encode_token({user_id: @user.id})
      render json: { user: SessionSerializer.new(@user) }, status: :accepted
    else
      render json: {error: "Email or password don't match. Please try again.", status: :unauthorized}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: { error: "No User Logged In."}
    end
  end

  private 
  
  def session_params
    params.require(:user).permit(:email, :password)
  end
end