"Baja y modificación"
|misuper productos prod1 prod2 prod3 cargarProducto cod nom prec cant cat |


"*****************************************CARGA DE PRODUCTOS A LA COLECCION DEL OBJETO SUPERMERCADO************************************************"
misuper := Supermercado crearSupermercado: 'miniSuper'.
prod1 := Producto crearProducto: 1 nombre: 'azucar' precio: 50 cantidad: 10 categoria: 'alimentos'.
prod2 := Producto crearProducto: 2 nombre: 'fideos' precio: 60 cantidad: 20 categoria: 'alimentos'.
prod3 := Producto crearProducto: 3 nombre: 'lavandina' precio: 100 cantidad: 15 categoria: 'limpieza'.
misuper agregarProducto: prod1.
misuper agregarProducto: prod2.
misuper agregarProducto: prod3.


"*********************************************************ELIMINACION DE PRODUCTO POR NOMBRE*****************************************************************"

eliminarProducto := MessageBox confirm: 'DESEA ELIMINAR UN PRODUCTO?' caption: 'ELMINACION DE PRODUCTOS'.

(eliminarProducto) 
ifTrue: [
	  [eliminarProducto] whileTrue: [
		nom := Prompter prompt: 'INGRESE EL NOMBRE DEL PRODUCTO'.
		misuper eliminarProductoPorNombre: nom .	
		eliminarProducto := MessageBox confirm: 'DESEA ELIMINAR MAS PRODUCTOS?' caption: 'ELIMINACION DE PRODUCTOS'.
        ].
	
        MessageBox notify: 'LA ELIMINACION HA FINALIZADO' caption: 'FINALIZACION'.
]
ifFalse: [ 
	MessageBox notify: 'NO SE HA ELIMINADO NINGUN PRODUCTO' caption:'FINALIZADO'.
].

productos := misuper verProductos.
productos inspect.



"*********************************************************MODIFICACION DE PRODUCTO POR NOMBRE*****************************************************************"

modificarProducto := MessageBox confirm: 'DESEA MODIFICAR UN PRODUCTO?' caption: 'MODICFICACION DE PRODUCTOS'.

(modificarProducto) 
ifTrue: [

	  [modificarProducto] whileTrue: [
		cod := (Prompter prompt: 'INGRESE EL CODIGO DEL PRODUCTO A MODIFICAR') asNumber.
		nom := Prompter prompt: 'INGRESE NUEVO NOMBRE DEL PRODUCTO'.
		prec :=  (Prompter prompt: 'INGRESE NUEVO PRECIO DEL PRODUCTO') asNumber.
		cant := (Prompter prompt: 'INGRESE LA CANTIDAD DEL PRODUCTO') asNumber.
		cat := Prompter prompt: 'INGRESE LA CATEGORIA DEL PRODUCTO'.

		misuper modificarProducto: cod nombre: nom categoria: cat precio: prec stock: cant.
		
		modificarProducto := MessageBox confirm: 'DESEA MODIFICAR MAS PRODUCTOS?' caption: 'MODIFICACION DE PRODUCTOS'.
        ].
	
        MessageBox notify: 'LA MODIFICACION HA FINALIZADO' caption: 'FINALIZACION DE MODIFICACION'.
]
ifFalse: [ 
	MessageBox notify: 'NO SE HA MODIFICADO NINGUN PRODUCTO' caption:'Finalizado'.
].

productos := misuper verProductos.
productos inspect.

