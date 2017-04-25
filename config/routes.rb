Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  resources :products do
    resources :comments
  end
  
  resources :orders, only: [:index, :show, :create, :destroy]

  root 'static_pages#landing_page'

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  post 'static_pages/thank_you'

  #get 'static_pages/thank_you'  

end
