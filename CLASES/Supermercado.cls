"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Supermercado
	instanceVariableNames: 'nombre ventas productos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Supermercado guid: (GUID fromString: '{6de7998f-ea20-47a6-b739-ac4f0b56b93d}')!
Supermercado comment: ''!
!Supermercado categoriesForClass!Kernel-Objects! !
!Supermercado methodsFor!

agregarProducto: pProducto

	productos add: pProducto.!

agregarVenta: objVenta


	ventas add: objVenta.!

buscarProductoPorCodigo:pIdCodigo 

| aux |
	1 to: productos size do:[:i|((productos at: i) verCodigo = pIdCodigo) 
				      ifTrue: [
							aux := (productos at: i) .
													
						]

	].
^ aux.!

buscarProductoPorNombre:pNombre
	
	|objProducto|
	objProducto := productos detect:[:proc| proc verNombre = pNombre ] ifNone:[^nil].
	^ objProducto.
!

consultarProductosPorCategoria:  pCategoria

	|productosPorCategoria|
	productosPorCategoria := productos select: [:product | product verCategoria = pCategoria].

	^productosPorCategoria.

	

!

consultarProductosPorCategoriaDistinta: pCategoria

	|productosPorCategoria|
	productosPorCategoria := productos reject: [:product | product verCategoria = pCategoria].

	^productosPorCategoria.

	!

consultarTodasLasCategoriasProductos
	|categorias|
	categorias := productos collect: [:cat | cat verCategoria].
	^ categorias.!

eliminarProducto: objProducto


	productos remove: objProducto.

	
!

eliminarProductoPorCodigo: unCodigo

"Elimina unproducto por su codigo"
| producto|
 producto := self buscarProductoPorCodigo: unCodigo.
self eliminarProducto: producto.
!

eliminarProductoPorNombre: unNombre
| producto |
producto := self buscarProductoPorNombre: unNombre.
self eliminarProducto: producto.
!

existeProducto:objProducto

	^productos includes: objProducto.!

iniSupermercado: pNombre 

nombre := pNombre.
ventas := OrderedCollection new.
productos := OrderedCollection new.

!

modificarProducto:pIdCodigo nombre:pNombre categoria:pCategoria precio:pPrecio stock:pStock

	|objProducto|
	objProducto := productos detect:[:proc| proc verCodigo = pIdCodigo ] ifNone:[^nil].
	
	objProducto modiNombre: pNombre.
	objProducto modiCategoria: pCategoria.
	objProducto modiPrecio: pPrecio.
	objProducto modiCantidad: pStock.
	

!

ordenarProductosPorID
	|productosOrdenados|
	productosOrdenados := productos asSortedCollection: [ :a :b | a verCodigo < b verCodigo].
	^ productosOrdenados.












"
	|productosAux objIntercambioA objIntercambioB|
	productosAux := pProductos.

	1 to: productosAux size do:[:i|
			1 to: productosAux size do:[:g|
				   
				(((productosAux at: i) verCodigo) < ((productosAux at: g) verCodigo)) ifTrue: [

					objIntercambioA := productosAux at: i.
					objIntercambioB := productosAux at: g.
					productosAux at: i put: objIntercambioB.
					productosAux at: g put: objIntercambioA.
				].
			].
	].

	^ productosAux.
"!

validarSeleccion: pCodigo
|boolValidacion|

boolValidacion := false.

1 to: productos size do:[:i|

		 (((productos at: i) verCodigo) == pCodigo) ifTrue: [
			boolValidacion := true.
		 ].
].

^boolValidacion.!

verProductos

	^productos.!

verVentas

	^ventas.! !
!Supermercado categoriesFor: #agregarProducto:!public! !
!Supermercado categoriesFor: #agregarVenta:!public! !
!Supermercado categoriesFor: #buscarProductoPorCodigo:!public! !
!Supermercado categoriesFor: #buscarProductoPorNombre:!public! !
!Supermercado categoriesFor: #consultarProductosPorCategoria:!public! !
!Supermercado categoriesFor: #consultarProductosPorCategoriaDistinta:!public! !
!Supermercado categoriesFor: #consultarTodasLasCategoriasProductos!public! !
!Supermercado categoriesFor: #eliminarProducto:!public! !
!Supermercado categoriesFor: #eliminarProductoPorCodigo:!public! !
!Supermercado categoriesFor: #eliminarProductoPorNombre:!public! !
!Supermercado categoriesFor: #existeProducto:!public! !
!Supermercado categoriesFor: #iniSupermercado:!public! !
!Supermercado categoriesFor: #modificarProducto:nombre:categoria:precio:stock:!public! !
!Supermercado categoriesFor: #ordenarProductosPorID!public! !
!Supermercado categoriesFor: #validarSeleccion:!public! !
!Supermercado categoriesFor: #verProductos!public! !
!Supermercado categoriesFor: #verVentas!public! !

!Supermercado class methodsFor!

crearSupermercado: pNombre 


^(self new) iniSupermercado: pNombre.! !
!Supermercado class categoriesFor: #crearSupermercado:!public! !

