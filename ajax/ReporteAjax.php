<?php

	session_start();

	require_once "../model/Reporte.php";

	$objReporte = new Reporte();

	switch ($_GET["op"]) {

		case 'SaveOrUpdate':			

			$espacio = $_POST["txtEspacio"]; // Llamamos al input txtNombre
            $categoria = $_POST["txtCategoria"];
            $telefono = $_POST["txtTelefono"];
            $titulo = $_POST["txtTitulo"];
            $descripcion = $_POST["txtDescripcion"];
            $imagen = $_FILES["imagenArt"]["tmp_name"];
			$ruta = $_FILES["imagenArt"]["name"];


            if(move_uploaded_file($imagen, "../Files/Reporte/".$ruta)){

				if(empty($_POST["txtIdReporte"])){

					if($objReporte->Registrar($espacio, $categoria, $telefono, $titulo, $descripcion, "Files/Reporte/".$ruta)){
						echo "Reporte Registrado";
					}else{
						echo "El Reporte no ha podido ser registado.";
					}
				}else{

					$idreporte = $_POST["txtIdReporte"];
					if($objReporte->Modificar($idreporte, $espacio, $categoria, $telefono, $titulo, $descripcion, "Files/Reporte/".$ruta)){
						echo "Informacion del Reporte ha sido actualizada";
					}else{
						echo "Informacion del Reporte no ha podido ser actualizada.";
					}
				}
			} else {
				$ruta_img = $_POST["txtRutaImgArt"];
				if(empty($_POST["txtIdReporte"])){

					if($objReporte->Registrar( $espacio, $categoria, $telefono, $titulo, $descripcion, $ruta_img)){
						echo "Reporte Registrado";
					}else{
						echo "El Reporte no ha podido ser registado.";
					}
				}else{

					$idreporte = $_POST["txtIdReporte"];
					if($objReporte->Modificar($idreporte, $espacio, $categoria, $telefono, $titulo, $descripcion, $ruta_img)){
						echo "Informacion del Reporte ha sido actualizada";
					}else{
						echo "Informacion del Reporte no ha podido ser actualizada.";
					}
				}
			}

			break;

		case "delete":			
			
			$id = $_POST["id"];// Llamamos a la variable id del js que mandamos por $.post (Categoria.js (Linea 62))
			$result = $objReporte->Eliminar($id);
			if ($result) {
				echo "Eliminado Exitosamente";
			} else {
				echo "No fue Eliminado";
			}
			break;
		
		case "list":

			$query_Tipo = $objReporte->Listar();
			$data = Array();
			$i = 1;
			while ($reg = $query_Tipo->fetch_object()) {
				$data[] = array(
					"id"=>$i,
                    "1"=>$reg->espacio,
                    "2"=>$reg->categoria,
                    "3"=>$reg->telefono,
                    "4"=>$reg->titulo,
                    
					"5"=>'<button class="btn btn-warning" data-toggle="tooltip" title="Editar" onclick="cargarDataReporte('.$reg->idreporte.',\''.$reg->espacio.'\',\''.$reg->categoria.'\',\''.$reg->telefono.'\',\''.$reg->titulo.'\',\''.$reg->descripcion.'\',\''.$reg->imagen.'\')"><i class="fa fa-pencil"></i> </button>&nbsp;'.
					'<button class="btn btn-danger" data-toggle="tooltip" title="Eliminar" onclick="eliminarReporte('.$reg->idreporte.')"><i class="fa fa-trash"></i> </button>');
				$i++;
			}
			$results = array(
            "sEcho" => 1,
        	"iTotalRecords" => count($data),
        	"iTotalDisplayRecords" => count($data),
            "aaData"=>$data);
			echo json_encode($results);
            
			break;

	}
	