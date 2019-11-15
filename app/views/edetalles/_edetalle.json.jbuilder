json.extract! edetalle, :id, :numero, :fecha, :cliente, :linea, :nosec, :nobultos, :noparte, :upc, :shortdesc, :longdesc, :pesototal, :um, :marca, :modelo, :serie, :origen, :cantidad, :umc, :precio, :importe, :docto, :capturoentrada, :capturofactura, :reviso, :created_at, :updated_at
json.url edetalle_url(edetalle, format: :json)
