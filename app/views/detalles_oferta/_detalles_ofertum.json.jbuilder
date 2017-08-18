json.extract! detalles_ofertum, :id, :titulo, :tipo, :anio, :ubicacion, :descripcion, :requisitos, :nivel_de_idioma, :otros_beneficios, :created_at, :updated_at
json.url detalles_ofertum_url(detalles_ofertum, format: :json)
