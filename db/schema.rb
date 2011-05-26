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

ActiveRecord::Schema.define(:version => 20110526145106) do

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
