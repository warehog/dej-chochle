Rails.application.routes.draw do
  namespace :api do
    resources :posts, only: [:index, :show, :create, :destroy] do
      resources :attachments, only: [:destroy]
    end
  end
end
