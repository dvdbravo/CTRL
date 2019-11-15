json.extract! entrada, :id, :numero, :fecha, :cliente, :destino, :descripcion, :cantidad, :peso, :um, :volumen, :ubicacion, :uembarque, :proveedor, :docto, :tdocto, :created_at, :updated_at
json.url entrada_url(entrada, format: :json)
