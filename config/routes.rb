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
    root :to => redirect("/cards")
    resources :form_sections
    resources :oficio_prefeituras
    resources :users
    resources :counties
    resources :surveys do
      post "clone", :action => "clone", as: :clone
      resources :sections do
        resources :questions do
          post "up", :action => "up_question", as: :up_question
          post "down", :action => "down_question", as: :down_question
          resources :answers
        end
      end
    end
  end

  root :to => redirect("/users/sign_in")
end
