University::Application.routes.draw do
  get "/" => 'home#home'
  
  get "terms" => 'term#index', :as => :terms
  get "terms/new" => 'term#new', :as => :new_term
  get "terms/:id" => 'term#show', :as => :term
  post "terms" => 'term#create', :as => :create_term
  get "terms/:id/edit" => 'term#edit', :as => :edit_term
  post "terms/:id" => 'term#update', :as => :update_term
  delete "terms/:id" => 'term#delete', :as => :delete_term
  
  get "classes" => 'klasses#index', :as => :klasses
  get "classes/new" => 'klasses#new', :as => :new_klass
  post "classes" => 'klasses#create', :as => :create_klass
  get "classes/:id" => 'klasses#show', :as => :klass
  get "classes/:id/edit" => 'klasses#edit', :as => :edit_klass
  post "classes/:id" => 'klasses#update', :as => :update_klass
  delete "classes/:id" => 'klasses#delete', :as=> :delete_klass
  
  get "students" => 'student#index', :as => :students
  get "students/new" => 'student#new', :as => :new_student
  get "students/:id" => 'student#show', :as => :student
  post "students" => 'student#create', :as => :create_student
  get "students/:id/edit" => 'student#edit', :as => :edit_student
  post "students/:id" => 'student#update', :as => :update_student
  delete "students/:id" => 'student#delete', :as => :delete_student
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
