Homesafe::Application.routes.draw do
  root(to: 'welcome#welcome')

  resources :users
  resources :contacts
  resources :location
end

