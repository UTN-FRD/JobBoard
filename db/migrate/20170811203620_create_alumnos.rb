class CreateAlumnos < ActiveRecord::Migration[5.1]
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :legajo
      t.string :dni
      t.string :email
      t.string :telefono
      t.string :carrera
      t.string :anio_en_curso
      t.date :fecha_registro
      t.date :ultimo_acceso

      t.timestamps
    end
  end
end
