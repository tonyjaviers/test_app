class LibrosController < ApplicationController

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

  def show
    @libro=Libro.find(params[:id])
  end

  end
  private
     def libro_params
       params.require(:libro).permit(:title,:description)
     end
end
