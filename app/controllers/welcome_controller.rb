class WelcomeController < ApplicationController
  def home
  end

  def apps
    NavHelper.set_active(:apps)
  end

  def settings
    NavHelper.set_active(:settings)
  end
end
