ColetaSeletiva::Application.routes.draw do
  devise_for :users

  namespace :admin do
    get "dashboard" => "dashboard#index"
  end
end
