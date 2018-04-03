Rails.application.routes.draw do
  devise_for :users
  get 'home/about'
  root 'home#index'
  get 'home/lookup'
  post '/home/lookup' => 'home/lookup'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
