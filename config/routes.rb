Rails.application.routes.draw do
  get 'search/on_call_caregivers' => 'search#OCC'
  get 'search/primary_caregivers' => 'search#PC'

  resources :appointments do
    put '/applications/:id/select' => 'appointments#select', as: :select
    resources :applications, only: [:new, :create]
    resources :reminders, only: [:create, :destroy]
  end
  resources :primary_caregivers do
    resources :appointments
    resources :patients, only: [:update]
  end

  resources :on_call_caregivers, only: [:show, :update, :edit] do
    get '/appointments' => 'appointments#confirmed_index', as: :confirmed_appointments
    get '/appointments/:id' => 'appointments#confirmed_show', as: :confirmed_appointment
    post '/send_email_to' => 'on_call_caregivers#send_email_to', as: :send_email_to
  end
  resources :primary_caregivers, only: [:show, :update, :edit]


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  root 'welcome#index'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  resources :sessions, only: [:new, :create]

  resources :logins, only: [:create, :destroy, :new, :edit, :update]

  get 'login' => 'sessions'
  get 'logout'=> 'sessions#destroy'

  resources :twilio, only: [:new, :create, :destroy]
  get 'twilio' => 'twilio#new'
  post '/send_sms' =>'twilio#send_sms'

  resources :mail, only: [:new, :create, :destroy]
  get 'mail' => 'mail#new'
  post '/send_email' => 'mail#send_email'
  post '/send_confirmation' => 'mail#send_confirmation'

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
