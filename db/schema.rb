# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170817185558) do

  create_table "alumnos", force: :cascade do |t|
    t.string "nombre"
    t.string "legajo"
    t.string "dni"
    t.string "email"
    t.string "telefono"
    t.string "carrera"
    t.string "anio_en_curso"
    t.date "fecha_registro"
    t.date "ultimo_acceso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datos", force: :cascade do |t|
    t.string "nombre_de_la_empresa"
    t.string "rubro"
    t.string "direccion"
    t.string "ciudad"
    t.string "codigo_postal"
    t.string "email"
    t.string "cuit"
    t.string "telefonos"
    t.string "responsables"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datos_de_la_empresas", force: :cascade do |t|
    t.string "nombre_de_la_empresa"
    t.string "rubro"
    t.string "direccion"
    t.string "ciudad"
    t.string "codigo_postal"
    t.string "email"
    t.string "telefono"
    t.string "responsable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalles", force: :cascade do |t|
    t.string "titulo"
    t.string "tipo"
    t.string "anio"
    t.string "ubicacion"
    t.text "descripcion"
    t.text "requisitos"
    t.string "nivel_de_idioma"
    t.text "otros_beneficios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalles_oferta", force: :cascade do |t|
    t.string "titulo"
    t.string "tipo"
    t.string "anio"
    t.string "ubicacion"
    t.text "descripcion"
    t.text "requisitos"
    t.string "nivel_de_idioma"
    t.text "otros_beneficios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string "nombre_de_la_Empresa"
    t.string "rubro"
    t.string "direccion"
    t.string "ciudad"
    t.string "codigo_postal"
    t.string "email"
    t.string "cuit"
    t.string "telefonos"
    t.string "responsable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
