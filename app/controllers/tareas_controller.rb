class TareasController < ApplicationController
  def index
    @tareas = Tarea.all 
    # select * from tareas
  end

  def new 
    @tarea = Tarea.new
  end
  def create
    @tarea = Tarea.new(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
    @tarea.save
  if  @tarea.save
    #insert into tareas
  else
    render :new
   end
    
  end
  # insert into tareas(titulo, descripcion) values (formulario)
  def show
    @tarea = Tarea.find(params [:id])
    #select * from tareas where id=
  end
end
