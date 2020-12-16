"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Venta
	instanceVariableNames: 'idVenta fecha productosVendidos importe'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'idSumVenta'!
Venta guid: (GUID fromString: '{b1f37476-019d-4ba5-8569-fd48750a90fe}')!
Venta comment: ''!
!Venta categoriesForClass!Kernel-Objects! !
!Venta methodsFor!

iniVenta:pIdVenta fec:pFecha prod:pProductos imp:pImporte


	idVenta := pIdVenta.
	fecha := fecha.
	productosVendidos := pProductos.
	importe := pImporte.!

modiFecha: pFecha

		fecha := pFecha.

!

modiId: pIdVenta

	idVenta:=pIdVenta.!

modiImporte: pImporte

	importe := pImporte.!

modiProductosVendidos: pProductos

	productosVendidos := pProductos.!

verFecha

	^fecha.!

verIdVenta

	^idVenta.!

verImporte


	^importe.!

verProductosVendidos


	^productosVendidos.! !
!Venta categoriesFor: #iniVenta:fec:prod:imp:!public! !
!Venta categoriesFor: #modiFecha:!public! !
!Venta categoriesFor: #modiId:!public! !
!Venta categoriesFor: #modiImporte:!public! !
!Venta categoriesFor: #modiProductosVendidos:!public! !
!Venta categoriesFor: #verFecha!public! !
!Venta categoriesFor: #verIdVenta!public! !
!Venta categoriesFor: #verImporte!public! !
!Venta categoriesFor: #verProductosVendidos!public! !

!Venta class methodsFor!

crearVenta:pIdVenta fec:pFecha proc:pProductos imp:pImporte
	
	^(self new) iniVenta: pIdVenta fec: pFecha prod: pProductos imp: pImporte.

!

incrementarIdVenta

	idSumVenta :=  idSumVenta  + 1.

	^idSumVenta.!

obtenerImporte: pProductosVendidos

	|importeTotal precioTotal precio cantidad|

	importeTotal := 0.

	1 to: pProductosVendidos size do:[:i| 

		precio := ((pProductosVendidos at: i) verProducto) verPrecio.
		cantidad := (pProductosVendidos at: i) verCantidad.
		precioTotal := precio * cantidad.
		importeTotal := importeTotal + precioTotal.
        ].

	^importeTotal.! !
!Venta class categoriesFor: #crearVenta:fec:proc:imp:!public! !
!Venta class categoriesFor: #incrementarIdVenta!public! !
!Venta class categoriesFor: #obtenerImporte:!public! !

