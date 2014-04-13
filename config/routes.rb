Homesafe::Application.routes.draw do
  root(to: 'welcome#welcome')

  resources :users
  resources :contacts
  resources :locations

  post 'notifications' => 'notifications#create'
  get 'going_home' => 'locations#home'
end

