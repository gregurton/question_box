Rails.application.routes.draw do
<<<<<<< HEAD
  get 'registers/new'

  root 'question#index'
  

  resources :users, :only => [:create, :new, :show, :account_confirmation]
  resources :login, :only => [:show,:create, :destroy, :new]
  resources :question, :only => [ :new, :show, :create, :index] do
=======
  root 'questions#home'

  get 'proxy/bing.json' => "bing_proxy#get"

  resource :login, :only => [:show, :create, :destroy]
  resources :users, :only => [:new, :create]
  resources :questions, :only => [:index, :new, :create, :show] do
>>>>>>> 66bf726a78e18dafded69c8dc07dc8b10c383a19
    post :vote, on: :member
    member do
      put 'sms'
    end
    resources :answers, :only => [:create], :shallow => true do
      post :vote, on: :member
    end
  end
<<<<<<< HEAD
  
  get "question/:id/vote" => "question#vote"
  
  delete 'login/destroy'
  
  get 'account_confirmation', to: 'users#account_confirmation'
  
  

  # resources :users, only => [:create,:new]


=======

  get 'password_reset' => 'password_resets#new', as: :password_reset
  post 'password_reset' => 'password_resets#create'
  get 'password_reset/:id' => 'password_resets#edit', as: :change_password
  patch 'password_reset/:id' => 'password_resets#update'
>>>>>>> 66bf726a78e18dafded69c8dc07dc8b10c383a19

  #OLD CODE THAT DOESN'T WORK FOR SMS BUTTON
  #patch 'questions/:id' => 'questions#SMS', as: 'sms'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
