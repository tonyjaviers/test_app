class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string:title
      
    end
  end
end
