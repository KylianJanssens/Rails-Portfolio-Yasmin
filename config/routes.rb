Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  resources :projects
  get '/about', to: 'pages#about', as: 'about'
  get '/shop', to: 'pages#shop', as: 'shop'
  get '/contact', to: 'pages#contact', as: 'contact'
end
