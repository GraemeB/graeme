Graeme::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'signout', to: 'sessions#destroy', as: 'signout'
  match 'sessions/new', to: 'sessions#new'

  root :to => 'posts#index'
end
