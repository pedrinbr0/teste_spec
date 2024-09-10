# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
    # Exibe o formulário de login
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_dashboard_path, notice: 'Login efetuado com sucesso.'
    else
      flash.now[:alert] = 'Email ou senha inválidos.'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logout efetuado com sucesso.'
  end
end
