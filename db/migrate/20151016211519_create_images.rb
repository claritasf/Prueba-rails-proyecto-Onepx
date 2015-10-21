class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name, null: false # se agrega un constraint donde no permita que name sea nulo
      t.integer :category, default: 0 # se agrega que por defecto el valor sea 0
      t.text :description
      t.string :tags, array: true, default: [] #el atributo de tags va a ser un arreglo y lo guarda como un arreglo y el default va a ser un arreglo en blanco

      t.timestamps null: false # agrega dos columnas created at y update at
    end
  end
end
