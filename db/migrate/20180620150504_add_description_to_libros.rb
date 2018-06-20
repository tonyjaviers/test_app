class AddDescriptionToLibros < ActiveRecord::Migration
  def change
    add_column:libros,:description,:text_area
    add_column:libros,:created_at,:datetime
    add_column:libros,:updated_at,:datetime
  end
end
