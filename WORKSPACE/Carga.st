
|cod nom prec cant cat cantidadIngresada objProducto cargarProducto|
|objVenta idVenta fecha importeTotal seleccionarProducto seleccionCodigo|
|objSupermercado nombreSupermercado listaProductos nombreProducto descripcionProductos strCodigo|
|objProductoVendido cantidad productosVendidos validacion descripcionProductosVendidos nombreProducto descripcionVenta|


"***********************************************************************************CARGA DE PRODUCTOS AL SUPERMERCADO**************************************************************************************"
nombreSupermercado := Prompter prompt: 'INGRESE NOMBRE DEL SUPERMERCADO'.
objSupermercado := Supermercado crearSupermercado: nombreSupermercado.

cod := 100.
cargarProducto := MessageBox confirm: 'DESEA CARGAR UN PRODUCTO?' caption: 'CARGA DE PRODUCTOS'.

(cargarProducto) 
ifTrue: [

	  [cargarProducto] whileTrue: [
		nom := Prompter prompt: 'INGRESE EL NOMBRE DEL PRODUCTO'.
		prec :=  (Prompter prompt: 'INGRESE EL PRECIO DEL PRODUCTO') asNumber.
		cant := (Prompter prompt: 'INGRESE LA CANTIDAD DEL PRODUCTO') asNumber.
		cat := Prompter prompt: 'INGRESE LA CATEGORIA DEL PRODUCTO'.

		objProducto := Producto crearProducto: cod nombre: nom precio: prec cantidad: cant categoria: cat.
		objSupermercado agregarProducto: objProducto.
		cod := cod + 1.
		
		cargarProducto := MessageBox confirm: 'DESEA CARGAR MAS PRODUCTOS?' caption: 'CARGA DE PRODUCTOS'.
        ].
	
        MessageBox notify: 'LA CARGA HA FINALIZADO' caption: 'FINALIZACION DE CARGA'.
]
ifFalse: [
	
	MessageBox notify: 'EL PROGRAMA HA FINALIZADO' caption:'FINALIZADO'.
].



"************************************************************LISTAR DESCRIPCION DE PRODUCTOS CARGADOS EN VARIABLE: (descripcionProductos)****************************************************************"

listaProductos := objSupermercado verProductos.
descripcionProductos := ' '.

1 to: listaProductos size do:[:i|

		cod := (listaProductos at: i) verCodigo.
		nombreProducto := 'CODIGO: ', cod printString , '  ',  (listaProductos at: i) verNombre, ' /   '.
		descripcionProductos := descripcionProductos, nombreProducto.
].



"*********************SELECCIONAR PRODUCTO A VENDER E INSTANCIAR LA CLASE: (ProductoVendido), GUARDANDO LOS SELECCIONADOS EN LA COLECCION: (productosVendidos)*********************"
productosVendidos := OrderedCollection new.

seleccionarProducto := true.
objProducto := nil.
cantidad := nil.

[seleccionarProducto] whileTrue: [
	[	
	seleccionCodigo :=  (Prompter prompt: descripcionProductos caption: 'SELECCIONE EL CODIGO DEL PRODUCTO') asNumber.

	] on: Error do: [:ex | MessageBox notify: 'ERROR DE INGRESO. INGRESAR NUMERO!!!' caption: 'ERROR'. seleccionCodigo := -1 ].

	validacion := objSupermercado validarSeleccion: seleccionCodigo.
	(validacion) ifTrue: [

		objProducto := listaProductos detect: [:prod | prod verCodigo = seleccionCodigo].		
		cantidad :=  (Prompter prompt: 'INGRESE CANTIDAD' caption: 'CANTIDAD') asNumber.
		objProductoVendido := ProductoVendido crearProductoVendido: objProducto cant: cantidad.
		productosVendidos add: objProductoVendido.
		MessageBox notify: 'SE HA AGREGADO EL PRODUCTO A LA VENTA.'.
	]
	ifFalse: [
		MessageBox notify: 'LA SELECCION NO HA SIDO VALIDA.' caption: 'ERROR'.
	].

	seleccionarProducto := MessageBox confirm: 'SEGUIR SELECCIONADO?' caption: 'SELECCION'.
].

MessageBox notify: 'LA SELECCION DE PRODUCTOS HA FINALIZADO.' caption: 'FINALIZACION DE SELECCION'.


"*********************************************************************CREAR OBJETO VENTA CON LOS PRODUCTOS VENDIDOS SELECCIONADOS**********************************************************************"

idVenta := Venta incrementarIdVenta.
fecha := DateAndTime now.
importeTotal := Venta obtenerImporte: productosVendidos.

objVenta := Venta crearVenta: idVenta fec: fecha proc: productosVendidos imp: importeTotal.
objSupermercado agregarVenta: objVenta.
MessageBox notify: 'SE HA CONCRETADO LA VENTA - FECHA: ', fecha printString caption:'MENSAJE'.

descripcionProductosVendidos := ' '.


1 to: productosVendidos size do:[:i|
	
	nombreProducto := ((productosVendidos at: i) verProducto) verNombre.
	cantidad := (productosVendidos at: i) verCantidad.
	descripcionVenta := 'PRODUCTO: ', nombreProducto, '  ', 'CANTIDAD: ', cantidad printString, '   -   '.
	descripcionProductosVendidos := descripcionProductosVendidos, descripcionVenta.
].

MessageBox notify: descripcionProductosVendidos caption: 'ID VENTA: ', idVenta printString, '  ', 'IMPORTE TOTAL DE VENTA: ', importeTotal printString.












