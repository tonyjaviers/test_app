class LibrosController < ApplicationController

  def index
    @libros=Libro.all
  end

  def new
    @libro = Libro.new
  end

  def create
    @libro=Libro.new(libro_params)
    if @libro.save
      flash[:notice] = "Libro fue creado"
      redirect_to libro_path(@libro)
    else
      render 'new'
    end
  end

  def update
    @libro=Libro.find(params[:id])
    if @libro.update(libro_params)
      flash[:notice] = "Libro was successfully updated"
      redirect_to libro_path(@libro)
    else
      render 'edit'
    end
  end

  def edit
    @libro = Libro.find(params[:id])
  end

  def show
    @libro = Libro.find(params[:id])
  end

  def destroy
    @libro = Libro.find(params[:id])
    @libro.destroy
    flash[:notice] = "libro eliminado"
    redirect_to libro_path(@libro)
  end

  private

  def libro_params
    params.require(:libro).permit(:title,:description)
  end
end
