Rails.application.routes.draw do
root 'pages#home'
get 'home' => 'pages#home'


get 'games' => 'games#index'
get 'games/:id' => 'games#show'
post 'games' => 'games#create'
patch 'games/:id' => 'games#update'
delete 'games/:id' => 'games#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
