ColetaSeletiva::Application.routes.draw do
  

  devise_for :users

  namespace :admin do
    get "dashboard" => "dashboard#index"
    resources :answers
    resources :questions
    resources :sections
    resources :surveys
  end
end
