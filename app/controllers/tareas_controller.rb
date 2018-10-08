class TareasController < ApplicationController
 before_action :authenticate_usuario!, except: [:index,:show, :update] 
 before_action :set_tarea, except: [:index,:new,:create]
  def index
    @tareas = Tarea.all 
    # select * from tareas
  end

  def show
    
   # redirect_to controller: "tareas" , action: "show"
       #select * from tareas where id=
  end

  def new 
    @tarea = Tarea.new
  end

  def create
    @tarea = Tarea.new(tarea_params)
    @tarea.usuario = current_usuario
  if  @tarea.save
    #insert into tareas
    redirect_to @tarea # action show
    #controller: 'tareas', action: 'show' , id: @tarea.id 
  else
    render :new
   end
    
  end

  # insert into tareas(titulo, descripcion) values (formulario)
 

  def destroy
    
    @tarea.destroy
    redirect_to tareas_path
    #controller: "tareas" , action: "index"
  end

  def edit
   
   # redirect_to controller: "tareas" , action: "edit"
  end

  def update
    
    if @tarea.update(tarea_params)
      redirect_to @tarea
      #controller: "tareas" , action: "show" , id: @tarea.id
    else
      render :new
    end
  end
  
  private
  def set_tarea
    @tarea = Tarea.find(params[:id])
  end

  def tarea_params
    params.require(:tarea).permit(:titulo,:descripcion)

  end
end


