"Mostrar los productos que pertenecen a una categoria"
| misuper prod1 prod2 prod3 prod4 prod5 text1 text2 cat art |
"listas"
alimentos:= Set new.
bebidas:= Set new.
limpieza:= Set new.
golosinas:= Set new.
lacteos:= Set new.
"Crea un nuevo diccionario"
art:= Dictionary new.
"Instancia un nuevo supermercado y 3 nuevos productos de prueba"
misuper := Supermercado crearSupermercado: 'miniSuper'.
prod1:= Producto crearProducto: 1 nombre: 'azucar' precio: 50 cantidad: 10 categoria: 'alimentos'.
prod2:= Producto crearProducto: 2 nombre: 'coca' precio: 60 cantidad: 20 categoria: 'bebida'.
prod3:= Producto crearProducto: 3 nombre: 'lavandina' precio: 100 cantidad: 15 categoria: 'limpieza'.
prod4:= Producto crearProducto: 4 nombre: 'leche' precio: 50 cantidad: 10 categoria: 'lacteos'.
prod5:= Producto crearProducto: 5 nombre: 'caramelo' precio: 50 cantidad: 10 categoria: 'golosinas'.
misuper agregarProducto: prod1.
misuper agregarProducto: prod2.
misuper agregarProducto: prod3.
misuper agregarProducto: prod4.
misuper agregarProducto: prod5.
"Pregunta por una categoria de productos"
ordenarProductos := MessageBox confirm: '¿Desea ordenar los productos por categoria?' caption: 'ordenarProductos'.

text1 := 'Finalizado'.
text2 := 'Termino de ordenar'.
"Agrega las categorias a el diccionario"
art at: 'alimentos' put: alimentos.
art at: 'bebidas' put: bebidas.
art at: 'limpieza' put: limpieza.
art at: 'golosinas' put: golosinas.
art at: 'lacteos' put: lacteos.

(ordenarProductos) 
ifTrue: [

	  [ordenarProductos] whileTrue: [
		1 to: (misuper verProductos) size do: [:i |
		
				((misuper verProductos at:i )verCategoria = 'alimentos' )
				ifTrue: [alimentos add: (misuper verProductos at: i).
						art at: 'alimentos' put: (alimentos).

				].
				((misuper verProductos at:i )verCategoria = 'bebidas' )
				ifTrue: [bebidas add: (misuper verProductos at: i).
						art at: 'bebidas' put: (bebidas ).

				].
				((misuper verProductos at:i )verCategoria = 'limpieza' )
				ifTrue: [limpieza add: (misuper verProductos at: i).
						art at: 'limpieza' put: (limpieza ).

				].
				((misuper verProductos at:i )verCategoria = 'golosinas' )
				ifTrue: [golosinas add: (misuper verProductos at: i).
						art at: 'golosinas' put: (golosinas ).

				].
				((misuper verProductos at:i )verCategoria = 'lacteos' )
				ifTrue: [lacteos add: (misuper verProductos at: i).
						art at: 'lacteos' put: (lacteos).

				].

			  
		].
		
		ordenarProductos := MessageBox confirm: '¿Desea volvear a ordenar?' caption: 'mostrarProductos'.
        ].
	
        MessageBox notify: text2 caption: 'Ordenamiento terminado'.
]
ifFalse: [ 
	MessageBox notify: text1 caption:'Finalizado'.
].