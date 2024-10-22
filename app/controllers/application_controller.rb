class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_user
    unless current_user
      redirect_to sign_in_path, alert: "Você precisa estar logado!"
    end
  end
end
