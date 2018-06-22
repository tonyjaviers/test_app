class LibrosController < ApplicationController

  before_action:set_libro, only:[:edit, :update, :show, :destroy]

  def index
    @libros=Libro.all
  end

  def new
    @libro = Libro.new
  end

  def create
    @libro = Libro.new(libro_params)
    if @libro.save
      flash[:notice] = "Libro fue creado"
      redirect_to libro_path(@libro)
    else
      render 'new'
    end
  end

  def update
    if @libro.update(libro_params)
      flash[:notice] = "Libro was successfully updated"
      redirect_to libro_path(@libro)
    else
      render 'edit'
    end
  end

  def edit

  end

  def show

  end

  def destroy
    @libro.destroy
    flash[:notice] = "libro eliminado"
    redirect_to libro_path(@libro)
  end

  private

  def set_libro
  @libro = Libro.find(params[:id])
  end

  def libro_params
    params.require(:libro).permit(:title,:description)
  end
end
