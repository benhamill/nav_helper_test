class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :reset_nav_helper

  private

  def reset_nav_helper
    NavHelper.set_active(:application)
  end
end
