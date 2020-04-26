$(document).on("ready", init);// Inciamos el jquery

var objC = new init();

function init(){


	var tabla = $('#tblReportes').dataTable({
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
	
	ListadoReportes();// Ni bien carga la pagina que cargue el metodo
	$("#VerForm").hide();// Ocultamos el formulario
	$("form#frmReportes").submit(SaveOrUpdate);// Evento submit de jquery que llamamos al metodo SaveOrUpdate para poder registrar o modificar datos
	
	$("#btnNuevo").click(VerForm);// evento click de jquery que llamamos al metodo VerForm

	//$("#liCatRed").click(function(event) {
      //    $("#Cargar").load('view/Categoria.html');
        //  $.getScript("public/js/Categoria.js");
    //});

	function SaveOrUpdate(e){
		e.preventDefault();

        var formData = new FormData($("#frmReportes")[0]);

        $.ajax({

                url: "./ajax/ReporteAjax.php?op=SaveOrUpdate",

                type: "POST",

               data: formData,

                contentType: false,

                processData: false,

                success: function(datos)

                {
    Limpiar();
                    swal("Mensaje del Sistema", datos, "success");
					ListadoReportes();
					OcultarForm();
                }

            });
	};

	function Limpiar(){
		// Limpiamos las cajas de texto
		$("#txtIdReporte").val("");
        $("#txtTelefono").val("");
        $("#txtTitulo").val("");
        $("#txtDescripcion").val("");

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

function ListadoReportes(){ 
	var tabla = $('#tblReportes').dataTable(
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
                    {   "mDataProp": "3"},
                    {   "mDataProp": "4"},
                    {   "mDataProp": "5"},

        	],"ajax": 
	        	{
	        		url: './ajax/ReporteAjax.php?op=list',
					type : "get",
					dataType : "json",
					
					error: function(e){
				   		console.log(e.responseText);	
					}
	        	},
	        "bDestroy": true

    	}).DataTable();

};


function eliminarReporte(id){// funcion que llamamos del archivo ajax/CategoriaAjax.php?op=delete linea 53
	bootbox.confirm("¿Esta Seguro de eliminar el Reporte?", function(result){ // confirmamos con una pregunta si queremos eliminar
		if(result){// si el result es true
			$.post("./ajax/ReporteAjax.php?op=delete", {id : id}, function(e){// llamamos la url de eliminar por post. y mandamos por parametro el id 
                
				
				swal("Mensaje del Sistema", e, "success");

				ListadoReportes();
            });
		}
		
	})
}

function cargarDataReporte(id, espacio, categoria, telefono, titulo, descripcion, imagen){// funcion que llamamos del archivo ajax/CategoriaAjax.php linea 52
		$("#VerForm").show();// mostramos el formulario
		$("#btnNuevo").hide();// ocultamos el boton nuevo
		$("#VerListado").hide();

		$("#txtIdReporte").val(id);// recibimos la variable id a la caja de texto txtIdCategoria
        $("#txtEspacio").val(espacio);// recibimos la variable nombre a la caja de texto txtNombre
        $("#txtCategoria").val(categoria);
        $("#txtTelefono").val(telefono);
        $("#txtTitulo").val(titulo);
        $("#txtDescripcion").val(descripcion);
    
        $("#txtRutaImgArt").val(imagen);
        $("#txtRutaImgArt").show();


}