Jrxlab::Application.routes.draw do
  resources :blog_posts

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end