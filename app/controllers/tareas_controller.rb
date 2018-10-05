class TareasController < ApplicationController
  def index
    @tareas = Tarea.all 
    # select * from tareas
  end

  def show
    @tarea = Tarea.find(params[:id])
   # redirect_to controller: "tareas" , action: "show"
       #select * from tareas where id=
  end

  def new 
    @tarea = Tarea.new
  end

  def create
    @tarea = Tarea.new(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
    @tarea.save
  if  @tarea.save
    #insert into tareas
    redirect_to controller: 'tareas', action: 'show' , id: @tarea.id 
  else
    render :new
   end
    
  end

  # insert into tareas(titulo, descripcion) values (formulario)
 

  def destroy
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


end
