json.extract! alumno, :id, :nombre, :legajo, :dni, :email, :telefono, :carrera, :anio_en_curso, :fecha_registro, :ultimo_acceso, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)
