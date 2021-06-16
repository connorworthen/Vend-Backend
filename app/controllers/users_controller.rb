class UsersController < ApplicationController

  skip_before_action :authorized, only: [:create]
  
  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user), jwt: token }
    else
      render json: {error: "Email is already tied to an exisiting account."}
    end
  end

  private 
  
  def user_params
    params.require(:user).permit(:first, :last, :phone, :address, :password, :email)
  end

end
