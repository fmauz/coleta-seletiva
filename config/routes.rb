ColetaSeletiva::Application.routes.draw do

  resources :counties, only: [ :index ]
  resources :cards do
    collection do
      get "verify"
      get "form_section"
    end
  end
  
  devise_for :users

  namespace :admin do
    root :to => "dashboard#index"
    resources :form_sections
    resources :oficio_prefeituras
    resources :users
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
