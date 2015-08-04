Blogger::Application.routes.draw do
  root to: 'homes#index'
  resources :homes, only: [ :index ]
  resources :pages, only: [ :index ]
  resources :articles do 
    resources :comments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :create ]
  resources :smart_trippers
  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  
end
