ToDo::Application.routes.draw do
  resources :items

  # Allows parameters to be passed to the controller action
  match 'items/complete' => 'items#complete', :via => :post

  # Making the index root at /localhost:3000 
   root 'items#index'

end
