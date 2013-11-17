ColetaSeletiva::Application.routes.draw do

  resources :counties, only: [ :index ]
  resources :cards, only: [ :index, :new, :create, :show ]
  
  devise_for :users

  namespace :admin do
    root :to => "dashboard#index"
    resources :counties
    resources :surveys do
      resources :sections do
        resources :questions do
          resources :answers
        end
      end
    end
  end

  root :to => redirect("/users/sign_in")
end
