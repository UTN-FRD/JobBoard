class CreateDetallesOferta < ActiveRecord::Migration[5.1]
  def change
    create_table :detalles_oferta do |t|
      t.string :titulo
      t.string :tipo
      t.string :anio
      t.string :ubicacion
      t.text :descripcion
      t.text :requisitos
      t.string :nivel_de_idioma
      t.text :otros_beneficios

      t.timestamps
    end
  end
end
