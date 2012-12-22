NavHelperTest::Application.routes.draw do
  get 'settings' => 'settings#index'

  namespace :awesome_app do
    get 'settings' => 'settings#index'
    get 'history' => 'history#index'
  end

  namespace :great_app do
    get 'settings' => 'settings#index'
  end

  root to: 'welcome#home'
end
