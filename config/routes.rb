Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :members
  
  get 'pages/about'
  get 'pages/privacy'
  get 'pages/terms'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
