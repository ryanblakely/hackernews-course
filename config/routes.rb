Rails.application.routes.draw do
  devise_for :users
  root 'submissions#index'

  resources :submissions do
    member do
      put "like", to: "submissions#upvote"
      put "dislike", to: "submissions#downvote"
    end
  end
end
