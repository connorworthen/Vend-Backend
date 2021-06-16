class SessionsController < ApplicationController

  before_action :authorized, only: [:auto_login]

  def login
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      token = encode_token({user_id: user.id})
      render json: { user: user, jwt: token }, status: :accepted
    else
      render json: {failure: "Log in failed! Username or password invalid!"}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: { error: "No User Logged In."}
    end
  end

end