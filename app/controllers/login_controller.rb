class LoginController < ApplicationController
  def index
    if session[:user_id]
      redirect_to root_path
    end
    @user = User.new
  end

  def go
    usr = User.find_by(username: params[:user][:username])
    if usr.present? && usr.authenticate(params[:user][:password])
      session[:user_id] = usr[:id]
      redirect_to root_path
    else 
      redirect_to login_path
      flash[:error] = "Usuário e/ou senha inválidos"
    end
    
  end

  def logout
    if session[:user_id]
      session[:user_id] = nil
      flash[:info] = "Usuário desconectado"
    end
    redirect_to login_path
  end
end
