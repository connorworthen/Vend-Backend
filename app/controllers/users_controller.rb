class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    if @user.valid?
      # @token = encode_token(user_id: @user.id)
      # render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      render json: { user: UserSerializer.new(@user)}
    else
      render json: {error: "Email is already tied to an exisiting account."}
    end
  end

  def login
    @user = User.find_by(username: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      # token = encode_token({user_id: @user.id})
      render json: { user: UserSerializer.new(@user) }, status: :accepted
    else
      render json: {error: "Email or password don't match. Please try again.", status: :unauthorized}
    end
  end

  private 
  
  def user_params
    params.require(:user).permit(:first, :last, :phone, :address, :password, :email)
  end

end
