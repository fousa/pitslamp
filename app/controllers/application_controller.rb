class ApplicationController < ActionController::Base

  protect_from_forgery

  helper :all

  helper_method :admin?

  def admin?
    false
  end

end
