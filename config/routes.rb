Rails.application.routes.draw do
  resources :quotes
  resources :ex_models
  resources :risk_by_brands
  resources :pages do 
    collection do
      get :home
    end
  end

  get "app\views\pages\account.html.erb", to: "pages#account", as: "account"

  root to: 'pages#home'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
