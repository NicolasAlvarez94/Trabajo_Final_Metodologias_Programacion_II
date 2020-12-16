"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ProductoVendido
	instanceVariableNames: 'producto cantidad'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ProductoVendido guid: (GUID fromString: '{66e7be45-5ff5-40a4-906b-2dd731677d7f}')!
ProductoVendido comment: ''!
!ProductoVendido categoriesForClass!Kernel-Objects! !
!ProductoVendido methodsFor!

iniProductoVendido: unProducto cant: unaCantidad

producto := unProducto.
cantidad := unaCantidad.


!

modiCantidad: unaCantidad

cantidad := unaCantidad.!

modiProducto: unProducto

producto := unProducto.!

verCantidad

	^cantidad.!

verPrecioTotal

^ producto verPrecio * cantidad.!

verProducto

^producto.! !
!ProductoVendido categoriesFor: #iniProductoVendido:cant:!public! !
!ProductoVendido categoriesFor: #modiCantidad:!public! !
!ProductoVendido categoriesFor: #modiProducto:!public! !
!ProductoVendido categoriesFor: #verCantidad!public! !
!ProductoVendido categoriesFor: #verPrecioTotal!public! !
!ProductoVendido categoriesFor: #verProducto!public! !

!ProductoVendido class methodsFor!

crearProductoVendido:objProducto cant: pCantidad

^(self new) iniProductoVendido: objProducto cant: pCantidad.! !
!ProductoVendido class categoriesFor: #crearProductoVendido:cant:!public! !

