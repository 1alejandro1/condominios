$(document).on("ready", init);// Inciamos el jquery

var objC = new init();

function init(){


	var tabla = $('#tblAreaComun').dataTable({
        dom: 'Bfrtip',
        buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ]
    });

	/*
		{
			"iDisplayLength": 2,
        "aLengthMenu": [10, 15, 20]
		}
	*/
	
	ListadoAreaComun();// Ni bien carga la pagina que cargue el metodo
	$("#VerForm").hide();// Ocultamos el formulario
	$("form#frmAreaComun").submit(SaveOrUpdate);// Evento submit de jquery que llamamos al metodo SaveOrUpdate para poder registrar o modificar datos
	
	$("#btnNuevo").click(VerForm);// evento click de jquery que llamamos al metodo VerForm

	//$("#liCatRed").click(function(event) {
      //    $("#Cargar").load('view/Categoria.html');
        //  $.getScript("public/js/Categoria.js");
    //});

	function SaveOrUpdate(e){
		e.preventDefault();

        var formData = new FormData($("#frmAreaComun")[0]);

        $.ajax({

                url: "./ajax/AreaComunAjax.php?op=SaveOrUpdate",

                type: "POST",

               data: formData,

                contentType: false,

                processData: false,

                success: function(datos)

                {
    Limpiar();
                    swal("Mensaje del Sistema", datos, "success");
					ListadoAreaComun();
					OcultarForm();
                }

            });
	};

	function Limpiar(){
		// Limpiamos las cajas de texto
        $("#txtIdAreaComun").val("");
        $("#txtNombre").val("");
        $("#txtCantidad").val("");
        $("#txtDescripcion").val("");
        $("#txtUbicacion").val("");

	}

	function VerForm(){
		$("#VerForm").show();// Mostramos el formulario
		$("#btnNuevo").hide();// ocultamos el boton nuevo
		$("#VerListado").hide();// ocultamos el listado
	}

	function OcultarForm(){
		$("#VerForm").hide();// Mostramos el formulario
		$("#btnNuevo").show();// ocultamos el boton nuevo
		$("#VerListado").show();// ocultamos el listado
	}
	
}

function ListadoAreaComun(){ 
	var tabla = $('#tblAreaComun').dataTable(
		{   "aProcessing": true,
       		"aServerSide": true,
       		dom: 'Bfrtip',
	        buttons: [
	            'copyHtml5',
	            'excelHtml5',
	            'csvHtml5',
	            'pdfHtml5'
	        ],
        	"aoColumns":[
        	     	{   "mDataProp": "id"},
                    {   "mDataProp": "1"},
                    {   "mDataProp": "2"},
                    {   "mDataProp": "3"}
  

        	],"ajax": 
	        	{
	        		url: './ajax/AreaComunAjax.php?op=list',
					type : "get",
					dataType : "json",
					
					error: function(e){
				   		console.log(e.responseText);	
					}
	        	},
	        "bDestroy": true

    	}).DataTable();

};


function eliminarAreaComun(id){// funcion que llamamos del archivo ajax/CategoriaAjax.php?op=delete linea 53
	bootbox.confirm("¿Esta Seguro de eliminar la Area Comun?", function(result){ // confirmamos con una pregunta si queremos eliminar
		if(result){// si el result es true
			$.post("./ajax/AreaComunAjax.php?op=delete", {id : id}, function(e){// llamamos la url de eliminar por post. y mandamos por parametro el id 
                
				
				swal("Mensaje del Sistema", e, "success");

				ListadoAreaComun();
            });
		}
		
	})
}

function cargarDataAreaComun(id, nombre, reserva, reservabloque, cantidad,ubicacion, descripcion, imagen){// funcion que llamamos del archivo ajax/CategoriaAjax.php linea 52
		$("#VerForm").show();// mostramos el formulario
		$("#btnNuevo").hide();// ocultamos el boton nuevo
		$("#VerListado").hide();

		$("#txtIdAreaComun").val(id);// recibimos la variable id a la caja de texto txtIdCategoria
        $("#txtNombre").val(nombre);// recibimos la variable nombre a la caja de texto txtNombre
        $("#txtReserva").val(reserva);
        $("#txtReservaBloque").val(reservabloque);
        $("#txtCantidad").val(cantidad);
        $("#txtUbicacion").val(ubicacion);
        $("#txtDescripcion").val(descripcion);
    
        $("#txtRutaImgArt").val(imagen);
        $("#txtRutaImgArt").show();


}