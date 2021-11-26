Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] do
      resources :comments
    end
    resource :session, only: [:create, :destroy, :show]
    resources :articles do
      resources :comments
    end
  end

  root "static_pages#root"
end
