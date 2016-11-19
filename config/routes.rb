Rails.application.routes.draw do
root 'pages#home'
get 'home' => 'pages#home'
get 'games' => 'games#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
