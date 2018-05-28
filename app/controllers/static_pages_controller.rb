class StaticPagesController < ApplicationController
  before_action :set_user, only: [:contact, :about, :privacy_policy]

  def home
    redirect_to(users_path) unless !signed_in?
    @user = User.new
  end

  def help
  end

  def contact
  end

  def about
  end

  def privacy_policy
  end

  private
    def set_user
      @user=current_user
    end

end
