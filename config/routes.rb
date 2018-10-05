Rails.application.routes.draw do
<<<<<<< HEAD
 resources :tareas
 
  # get 'tareas/index'
  #get 'tareas', to: 'tareas#index'
  #get 'tareas/new', to: 'tareas#new'
  #delete 'tareas', to: 'tareas#destroy'
  #get 'tareas/:id', to: 'tareas#show'
  #post 'tareas/create'
  #get 'tareas/:id/edit', to: 'tareas#edit'
 
  #put 'tareas/:id', to: 'tareas#update'
  #post 'tareas', to: 'tareas#create'
=======
 # get 'tareas/index'
  get 'tareas', to: 'tareas#index'
  get 'tareas/new', to: 'tareas#new'
  delete 'tareas', to: 'tareas#destroy'
  get 'tareas/:id', to: 'tareas#show'
  #post 'tareas/create'
  get 'tareas:/:id', to: 'tareas#edit'
 
  put 'tareas/id:', to: 'tareas#update'
  post 'tareas', to: 'tareas#create'
>>>>>>> 1b4e8559b8c8e59e0846332257cae819022427aa
  
  get 'bienvenido/index'

  root 'bienvenido#index' 
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
