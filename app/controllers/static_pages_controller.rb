class StaticPagesController < ApplicationController
  def home
    redirect_to(users_path) unless !signed_in?
  end

  def help
  end

  def contact
  end

  def about
  end

end
