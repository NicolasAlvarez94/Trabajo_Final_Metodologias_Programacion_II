"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Producto
	instanceVariableNames: 'codigo nombre categoria cantidad precio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Producto guid: (GUID fromString: '{38451992-4105-472b-8f5b-d9e708701f83}')!
Producto comment: ''!
!Producto categoriesForClass!Kernel-Objects! !
!Producto methodsFor!

agregarStock: pCantidad
"Agrega stock del produco"

cantidad := cantidad + pCantidad .!

hayCantidad
"Devuelve verdadero si el stock del producto es mayor que cero, falso en caso contrario"

^ cantidad > 0.
!

iniProducto: pCodigo nombre: pNombre precio:pPrecio cantidad: pCantidad categoria:pCategoria

"Inicializa una instancia de producto"

codigo := pCodigo.
nombre := pNombre .
precio := pPrecio .
cantidad := pCantidad.
categoria := pCategoria .
!

modiCantidad:pCantidad

	cantidad := pCantidad .!

modiCategoria:pCategoria

	categoria := pCategoria.!

modiCodigo: pCodigo
"Modifica el codigo del producto"

	codigo := pCodigo.!

modiNombre: pNombre
"Modifica el nombre del producto"

	nombre := pNombre.!

modiPrecio: pPrecio

	precio := pPrecio.!

verCategoria

	^categoria.!

verCodigo

"Muestra el codigo del producto"

	^codigo.



!

verNombre

	^nombre .
!

verPrecio

	^precio.
!

verStock

	^cantidad.
! !
!Producto categoriesFor: #agregarStock:!public! !
!Producto categoriesFor: #hayCantidad!public! !
!Producto categoriesFor: #iniProducto:nombre:precio:cantidad:categoria:!public! !
!Producto categoriesFor: #modiCantidad:!public! !
!Producto categoriesFor: #modiCategoria:!public! !
!Producto categoriesFor: #modiCodigo:!public! !
!Producto categoriesFor: #modiNombre:!public! !
!Producto categoriesFor: #modiPrecio:!public! !
!Producto categoriesFor: #verCategoria!public! !
!Producto categoriesFor: #verCodigo!public! !
!Producto categoriesFor: #verNombre!public! !
!Producto categoriesFor: #verPrecio!public! !
!Producto categoriesFor: #verStock!public! !

!Producto class methodsFor!

crearProducto: pCodigo nombre:pNombre precio:pPrecio cantidad:pCantidad categoria:pCategoria

	^(self new) iniProducto: pCodigo nombre: pNombre precio: pPrecio cantidad: pCantidad categoria: pCategoria! !
!Producto class categoriesFor: #crearProducto:nombre:precio:cantidad:categoria:!public! !

