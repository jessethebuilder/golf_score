GolfScore::Application.routes.draw do
  devise_for :users
  resources :holes

  resources :courses

  root :to => 'courses#new'
end
