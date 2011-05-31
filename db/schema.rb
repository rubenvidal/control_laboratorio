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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110531132433) do

  create_table "composiciones", :force => true do |t|
    t.integer  "prueba_id"
    t.integer  "producto_id"
    t.integer  "porcentaje"
    t.string   "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hornos", :force => true do |t|
    t.string   "codigo"
    t.string   "longitud"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mediciones", :force => true do |t|
    t.integer  "horno_id"
    t.datetime "fecha"
    t.string   "operario"
    t.integer  "velocidad_horno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pastas", :force => true do |t|
    t.string   "codigo"
    t.string   "tipo_tierra"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", :force => true do |t|
    t.integer  "proveedor_id"
    t.string   "referencia"
    t.string   "caracteristica"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proveedores", :force => true do |t|
    t.string   "codigo_proveedor"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "contacto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pruebas", :force => true do |t|
    t.integer  "pasta_id"
    t.datetime "fecha"
    t.string   "partida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quemadores", :force => true do |t|
    t.integer  "horno_id"
    t.string   "nombre"
    t.string   "cantidad_mecheros"
    t.string   "posicion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "valores", :force => true do |t|
    t.integer  "quemador_id"
    t.integer  "medicion_id"
    t.integer  "temperatura"
    t.integer  "presion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
