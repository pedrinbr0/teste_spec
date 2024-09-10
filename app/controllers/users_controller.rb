class UsersController < ApplicationController
  # Garante que o usuário esteja autenticado antes de acessar a ação index
  before_action :authenticate_user!, only: [:index]

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :kind, :level)
  end
end
