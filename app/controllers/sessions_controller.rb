class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(usuario: params[:session][:usuario].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error]='Usuario o contraseña incorrectos'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
