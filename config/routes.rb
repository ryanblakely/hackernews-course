Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root 'submissions#index'

  resources :submissions do
    member do
      put "like", to: "submissions#upvote"
      put "dislike", to: "submissions#downvote"
    end
    resources :comments
  end
end
