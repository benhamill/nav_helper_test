NavHelperTest::Application.routes.draw do
  get 'apps' =>  'welcome#apps'
  get 'settings' => 'welcome#settings'

  root to: 'welcome#home'
end
