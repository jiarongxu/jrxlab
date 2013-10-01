Jrxlab::Application.routes.draw do
  resources :links

  resources :blog_posts

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  get 'tags/:tag', to: 'links#index', as: :tag
  get 'photos', to: 'photos#index', as: :photos
  get 'about', to: "static#about", as: :about
end