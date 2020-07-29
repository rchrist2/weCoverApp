Rails.application.routes.draw do
  resources :quotes
  resources :ex_models
  resources :risk_by_brands
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
