Workspace::Application.routes.draw do
  get "subscription/login"
  get "subscription/register"
  get "tools/tool1"
  get "tools/tool2"
  get "tools/tool3"
  get "tools/tool4"
  get "tools/tool5"
  get "tools/tool6"
  get 'help/index'
  root "home#index"
  get 'help' => 'help#index', as: 'help'
  get 'tool1' => 'tools#tool1', as: 'tool1'
  get 'tool2' => 'tools#tool2', as: 'tool2'
  get 'tool3' => 'tools#tool3', as: 'tool3'
  get 'tool4' => 'tools#tool4', as: 'tool4'
  get 'tool5' => 'tools#tool5', as: 'tool5'
  get 'tool6' => 'tools#tool6', as: 'tool6'

  devise_for :users, :controllers => {:registrations => "users/registrations"}
    
 
  devise_scope :user do get "/register" => "users/registrations#new" end
  devise_scope :user do
    get "login", to: "users/sessions#new"
    get "logout", to: "users/sessions#destroy"
  end
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
