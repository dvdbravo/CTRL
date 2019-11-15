json.extract! usuario, :id, :usuario, :nombre, :password, :permisos, :tipo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
