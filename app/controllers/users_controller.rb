class UsersController < ApplicationController
  
  before_action :snake_case_params
  
  def create
    @user = User.new(user_params)
    if @user.save
      @token = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), jwt: @token}
    else
      render json: {errors: @user.errors.full_messages}, status: :not_acceptable
    end
  end

  private

  def snake_case_params
    request.parameters.deep_transform_keys!(&:underscore)
  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

  def render_user_data
    render json: {user: UserSerializer.new(@user), jwt: @token}
  end

end