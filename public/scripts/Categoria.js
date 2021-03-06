$(document).on("ready", init);// Inciamos el jquery

function init(){


	var tabla = $('#tblCategorias').dataTable({
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
	
	ListadoCategorias();// Ni bien carga la pagina que cargue el metodo
	$("#VerForm").hide();// Ocultamos el formulario
	$("#txtRutaImgProp").hide();
	$("form#frmCategorias").submit(SaveOrUpdate);// Evento submit de jquery que llamamos al metodo SaveOrUpdate para poder registrar o modificar datos
	
	$("#btnNuevo").click(VerForm);// evento click de jquery que llamamos al metodo VerForm

	//$("#liCatRed").click(function(event) {
      //    $("#Cargar").load('view/Categoria.html');
        //  $.getScript("public/js/Categoria.js");
    //});

	function SaveOrUpdate(e){
		e.preventDefault();

        var formData = new FormData($("#frmCategorias")[0]);

        $.ajax({

                url: "./ajax/CategoriaAjax.php?op=SaveOrUpdate",

                type: "POST",

               data: formData,

                contentType: false,

                processData: false,

                success: function(datos)

                {

                    swal("Mensaje del Sistema", datos, "success");
                    ListadoCategorias();
                    OcultarForm();
                    Limpiar();
                }

            });
	};

	function Limpiar(){
		// Limpiamos las cajas de texto
		$("#txtIdCategoria").val("");
		$("#txtNombre").val("");		
		$("#txtNum_Documento").val("");
		$("#txtTelefono").val("");
		$("#txtTelefono2").val("");		
		$("#txtEmail").val("");		
		$("#txtComentario").val("");
		
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

function ListadoCategorias(){ 
	var tabla = $('#tblCategorias').dataTable(
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
					{   "mDataProp": "6"},
					{   "mDataProp": "7"}

        	],"ajax": 
	        	{
	        		url: './ajax/CategoriaAjax.php?op=list',
					type : "get",
					dataType : "json",
					
					error: function(e){
				   		console.log(e.responseText);	
					}
	        	},
	        "bDestroy": true

    	}).DataTable();

};


function eliminarCategoria(id){// funcion que llamamos del archivo ajax/CategoriaAjax.php?op=delete linea 53
	bootbox.confirm("¿Esta Seguro de eliminar la Categoria?", function(result){ // confirmamos con una pregunta si queremos eliminar
		if(result){// si el result es true
			$.post("./ajax/CategoriaAjax.php?op=delete", {id : id}, function(e){// llamamos la url de eliminar por post. y mandamos por parametro el id 
                
				
				swal("Mensaje del Sistema", e, "success");

				ListadoCategorias();
            });
		}
		
	})
}

function cargarDataCategoria(id, nombre, tipo_documento, documento, telefono1, telefono2, email, asistencia, tipo, comentario, fotografia){// funcion que llamamos del archivo ajax/CategoriaAjax.php linea 52
		$("#VerForm").show();// mostramos el formulario
		$("#btnNuevo").hide();// ocultamos el boton nuevo
		$("#VerListado").hide();

		$("#txtIdCategoria").val(id);// recibimos la variable id a la caja de texto txtIdCategoria
		$("#txtNombre").val(nombre);// recibimos la variable nombre a la caja de texto txtNombre
		$("#cboTipo_Documento").val(tipo_documento);
		$("#txtNum_Documento").val(documento);
		$("#txtTelefono").val(telefono1);
		$("#txtTelefono2").val(telefono2);
		$("#txtEmail").val(email);
		$("#cboAsistencia").val(asistencia);
		$("#cboTipo").val(tipo);
		$("#txtComentario").val(comentario);
		$("#txtRutaImgProp").val(fotografia);
		$("#txtRutaImgProp").show();
}