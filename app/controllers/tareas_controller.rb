class TareasController < ApplicationController
 before_action :set_tarea, except: [:index,:new,:create]
  def index
    @tareas = Tarea.all 
    # select * from tareas
  end

  def show
<<<<<<< HEAD
    
=======
    @tarea = Tarea.find(params[:id])
>>>>>>> 1b4e8559b8c8e59e0846332257cae819022427aa
   # redirect_to controller: "tareas" , action: "show"
       #select * from tareas where id=
  end

  def new 
    @tarea = Tarea.new
  end

  def create
    @tarea = Tarea.new(tarea_params)
    
  if  @tarea.save
    #insert into tareas
<<<<<<< HEAD
    redirect_to @tarea # action show
    #controller: 'tareas', action: 'show' , id: @tarea.id 
=======
    redirect_to controller: 'tareas', action: 'show' , id: @tarea.id 
>>>>>>> 1b4e8559b8c8e59e0846332257cae819022427aa
  else
    render :new
   end
    
  end

  # insert into tareas(titulo, descripcion) values (formulario)
 

  def destroy
<<<<<<< HEAD
    
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
=======
    @tarea = Tarea.find(params[:id])
    @tarea.destroy
    redirect_to controller: "tareas" , action: "index"
  end

  def edit
    @tarea = Tarea.find(params[:id])
    redirect_to controller: "tareas" , action: "edit"
  end

  def update
    @tarea = Tarea.find(params[:id])
    if @tarea.update(titulo: params[:tarea][:titulo],
      descripcion: params[:tarea][:descripcion])
      redirect_to @tarea
    else
      render :new
    end
    
>>>>>>> 1b4e8559b8c8e59e0846332257cae819022427aa

  end
end


