Rails.application.routes.draw do
 # get 'tareas/index'
  get 'tareas', to: 'tareas#index'
  get 'tareas/new', to: 'tareas#new'
  get 'tareas/:id', to: 'tareas#show'
  #post 'tareas/create'
  post 'tareas', to: 'tareas#create'
  
  get 'bienvenido/index'

  root 'bienvenido#index' 
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
