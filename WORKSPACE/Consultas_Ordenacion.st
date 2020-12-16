
|objProducto1 objProducto2 objProducto3 objProducto4 objProducto5 objProducto6 objProducto7 objProducto8 objProducto9 productos|
|categoria categorias productosPorCategoria productosPorCategoriaDistinta objSupermercado productosOrdenados mensaje ingresoCategoria|


"*************************************CARGA DE PRODUCTOS A LA COLECCION DE LA INSTANCIA DE SUPERMERCADO***************************"
objSupermercado := Supermercado crearSupermercado: 'MERCADO LOS HERMANOS'.

objProducto1 := Producto crearProducto: 3 nombre: 'FIDEOS' precio: 90 cantidad: 100 categoria: 'ALIMENTOS'.
objProducto2 := Producto crearProducto: 5 nombre: 'ARROZ' precio: 70 cantidad: 150 categoria: 'ALIMENTOS'.
objProducto3 := Producto crearProducto: 2 nombre: 'DETERGENTE' precio: 75 cantidad: 50 categoria: 'LIMPIEZA'.
objProducto4 := Producto crearProducto: 1 nombre: 'RAVIOLES' precio: 120 cantidad: 60 categoria: 'ALIMENTOS'.
objProducto5 := Producto crearProducto: 4 nombre: 'LAVANDINA' precio: 80 cantidad: 80 categoria: 'LIMPIEZA'.
objProducto6 := Producto crearProducto: 7 nombre: 'PASTA DENTAL' precio: 90 cantidad: 130 categoria: 'HIGIENE'.
objProducto7 := Producto crearProducto: 6 nombre: 'JABON' precio: 40 cantidad: 100 categoria: 'HIGIENE'.

objSupermercado agregarProducto: objProducto1.
objSupermercado agregarProducto: objProducto2 .
objSupermercado agregarProducto: objProducto3 .
objSupermercado agregarProducto: objProducto4.
objSupermercado agregarProducto: objProducto5.
objSupermercado agregarProducto: objProducto6.
objSupermercado agregarProducto: objProducto7.


productos := objSupermercado verProductos.
productos inspect.

"************ORDENAMIENTO DE OBJETOS POR ID DE PRODUCTO A TRAVES DE METODO DE SUPEMERCADO QUE UTILIZA (SORTEDCOLLECTION)***************"
productosOrdenados := objSupermercado ordenarProductosPorID.


"*************************************************CONSULTA TODAS LAS CATEGORIAS DISPONIBLES (COLLECT)*************************************************************"
categorias := objSupermercado consultarTodasLasCategoriasProductos.

"*********************************************CONSULTA DE PRODUCTOS POR CATEGORIA (SELECT)************************************************************************"
ingresoCategoria := Prompter prompt: 'INGRESE LA CATEGORIA PARA CONSULTAR:'.

(categorias includes: ingresoCategoria)ifTrue: [
	mensaje := MessageBox notify: 'CONSULTA EXITOSA' caption: 'EXITO CONSULTA'.
	productosPorCategoria := objSupermercado consultarProductosPorCategoria: ingresoCategoria.	
]
ifFalse: [
	mensaje :=    MessageBox notify: 'ERROR NO HAY PRODUCTOS CON ESA CATEGORIA' caption: 'ERROR CONSULTA'.
].


"***********************************CONSULTAR PRODUCTOS POR CATEGORIA MENOS LA INDICADA (REJECT)************************************************************"
ingresoCategoria := Prompter prompt: 'CONSULTAR TODOS LOS PRODUCTOS MENOS LA CATEGORIA:'.

(categorias includes: ingresoCategoria)ifTrue: [
	mensaje := MessageBox notify: 'CONSULTA EXITOSA' caption: 'EXITO CONSULTA'.
	productosPorCategoriaDistinta  := objSupermercado consultarProductosPorCategoriaDistinta: ingresoCategoria.
]
ifFalse: [
	mensaje := MessageBox notify: 'ERROR NO HAY PRODUCTOS CON ESA CATEGORIA' caption: 'ERROR CONSULTA'.
].

"*************************************************************************************************************************************************************************************"

productos inspect.
productosOrdenados inspect.
productosPorCategoria inspect.
productosPorCategoriaDistinta inspect.


"************************************************************************OTRAS CONSULTAS***************************************************************************************"

objProducto8 := objSupermercado buscarProductoPorCodigo: 1.
objProducto8 inspect.

"UTILIZACION DE METODO QUE  CONTIENE (DETECT)"
objProducto9 := objSupermercado buscarProductoPorNombre: 'FIDEOS'.
objProducto9 inspect.


