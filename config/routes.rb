Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy, :show]
    resources :articles, shallow: true do
      resources :comments, except: %i[new edit show]
      resources :likes, except: %i[new edit show]
    end
    get '/:user_id/followers', to: 'followings_controller#followers'
    get '/:user_id/followeds', to: 'followings_controller#followeds'
  end

  root "static_pages#root"
end
