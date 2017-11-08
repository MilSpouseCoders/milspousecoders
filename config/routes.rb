Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :members

  get '/about', to: 'pages#about', as: 'about'
  get '/privacy', to: 'pages#privacy', as: 'privacy'
  get '/terms', to: 'pages#terms', as: 'terms'

  namespace :admin do
    resource :dashboards, only: :show
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
