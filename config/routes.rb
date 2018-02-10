Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  root to: "articles#index", defaults: {format: :json}

  resources :articles, defaults: {format: :json}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
