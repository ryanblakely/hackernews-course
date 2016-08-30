Rails.application.routes.draw do
  devise_for :users
  root 'submissions#index'

  resources :submissions
end
