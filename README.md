
## Instalacion

```Consola
$ bundle install
```

Esta aplicacion usa el puerto 8080 por defecto 

```Consola
$ ruby app.rb 
```

# Acciones Disponibles

## ``GET /requests``

Retorna el total de numero de request con exito

Ejemplo de respuesta:

	1092 requests.

## ``GET /rnc/:rnc``

Retorna informacion acerca de un RNC especifico por `:rnc`. [JSON serialized]<br>

Ejemplo de respuesta:

```json
{
  "rnc": "101010632",
  "name": "BANCO POPULAR DOMINICANO S A BANCO MULTIPLE",
  "comercial_name": "BANCO POPULAR DOMINICANO",
  "category": "",
  "payment_regimen": "NORMAL",
  "status": "ACTIVO"
  }
```

## ``GET /ncf/:rnc/:ncf``
#http://localhost:8080/ncf/101000001/E310000000001
Retorna verdadedo o falso deoendiendo si el RNC y NCF especificados en :rnc and<br>
``:ncf`` respectivamente pertenece a la entidad asociada en ``:rnc``<br>

Ejemplo de respuesta:

```json
{
  "valid": true
}
```

