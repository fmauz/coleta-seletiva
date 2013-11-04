ColetaSeletiva::Application.routes.draw do
  resources :answers

  resources :questions

  resources :sections

  resources :surveys

  devise_for :users

  namespace :admin do
    get "dashboard" => "dashboard#index"
  end
end
