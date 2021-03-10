class AuthController < ApplicationController
  
  def login
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      @token = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), jwt: @token, success: "Welcome back, #{@user.username}"}
    else
      render json: {failure: "Failure, see auth_controller"}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: {errors: "Not logged in, see auth_controller"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end