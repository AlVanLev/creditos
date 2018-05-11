class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(usuario: params[:session][:usuario].downcase)
    if user && user.authenticate(params[:session][:password])
    else
      flash.now[:error]='Usuario o contraseña incorrectos'
      render 'new'
    end
  end

  def destroy
  end
end
