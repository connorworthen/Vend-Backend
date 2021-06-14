class SessionsController < ApplicationController

  before_action: authorized

  def login
    @user = User.find_by(username: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      token = encode_token({user_id: @user.id})
      render json: { user: UserSerializer.new(@user) }, status: :accepted
    else
      render json: {error: "Email or password don't match. Please try again.", status: :unauthorized}
    end
  end

  private 
  
  def session_params
    params.require(:user).permit(:email, :password)
  end
end