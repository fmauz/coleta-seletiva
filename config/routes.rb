ColetaSeletiva::Application.routes.draw do


  devise_for :users

  namespace :admin do
    root :to => "dashboard#index"

    resources :surveys do
      resources :sections do
        resources :questions do
          resources :answers
        end
      end
    end
    
  end
end
