# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_29_033618) do

  create_table "categoria", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.string "rsocial"
    t.string "rfc"
    t.string "calleynumero"
    t.string "colonia"
    t.string "delegacion"
    t.string "ciudad"
    t.string "estado"
    t.string "codigopostal"
    t.string "telefono"
    t.string "correoe"
    t.string "contacto"
    t.string "puesto"
    t.string "telefonoc"
    t.string "correoec"
    t.string "agente"
    t.string "tipoactividad"
    t.date "clientedesde"
    t.date "ultimatransaccion"
    t.string "pais"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "destinos", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.string "estado"
    t.string "pais"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "edetalles", force: :cascade do |t|
    t.integer "numero"
    t.date "fecha"
    t.string "cliente"
    t.integer "linea"
    t.string "nosec"
    t.integer "nobultos"
    t.string "noparte"
    t.string "upc"
    t.string "shortdesc"
    t.text "longdesc"
    t.float "pesototal"
    t.string "um"
    t.string "marca"
    t.string "modelo"
    t.string "serie"
    t.string "origen"
    t.float "cantidad"
    t.string "umc"
    t.decimal "precio", precision: 7, scale: 2
    t.decimal "importe", precision: 7, scale: 2
    t.string "docto"
    t.integer "capturoentrada"
    t.integer "capturofactura"
    t.integer "reviso"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entradas", force: :cascade do |t|
    t.integer "numero"
    t.date "fecha"
    t.string "cliente"
    t.string "destino"
    t.string "descripcion"
    t.float "cantidad"
    t.float "peso"
    t.string "um"
    t.string "volumen"
    t.string "ubicacion"
    t.string "uembarque"
    t.string "proveedor"
    t.string "docto"
    t.string "tdocto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "edo"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.text "longdesc"
    t.string "sku"
    t.string "upc"
    t.string "categoria"
    t.string "subcategoria"
    t.string "idmarca"
    t.string "vendedor"
    t.float "peso"
    t.string "umedida"
    t.float "volumen"
    t.string "umedidav"
    t.float "alto"
    t.string "umedidaa"
    t.float "ancho"
    t.string "umedidaw"
    t.float "largo"
    t.string "umedidal"
    t.decimal "costo", precision: 7, scale: 2
    t.string "paisorigen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parametros", force: :cascade do |t|
    t.string "nombre"
    t.string "calleynumero"
    t.string "ciudadedocp"
    t.string "telefono"
    t.string "correoe"
    t.integer "noentrada"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "codigo"
    t.decimal "precio", precision: 7, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "puestos", force: :cascade do |t|
    t.string "puesto"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subcategoria", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tactividads", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "uembarques", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "umedidas", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "usuario"
    t.string "nombre"
    t.string "password"
    t.string "permisos"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.string "calleynumero"
    t.string "ciudad"
    t.string "estado"
    t.string "codigopostal"
    t.string "telefono"
    t.string "correoe"
    t.string "contacto"
    t.string "puesto"
    t.string "telefonoc"
    t.string "correoec"
    t.date "ultimatransaccion"
    t.string "taxid"
    t.string "pais"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
