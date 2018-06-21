class LibrosController < ApplicationController

  def new
    @libro = Libro.new
  end

  def create
    @libro=Libro.new(libro_params)
    @libro.save
  end

  private
     def libro_params
       params.require(:libro).permit(:title,:description)
     end
end
