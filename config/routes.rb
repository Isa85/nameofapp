Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)
    devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { :registrations => "registrations" }
    resources :users
    resources :products do
    resources :comments
    mount ActionCable.server => '/cable'
  end
  
  resources :orders, only: [:index, :show, :create, :destroy]

  root 'static_pages#landing_page'

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  post 'static_pages/thank_you'

  post 'payments/create'

  #get 'static_pages/thank_you'

  #get 'static_pages/landing_page'

end
