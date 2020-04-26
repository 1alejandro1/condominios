<?php

	session_start();

	require_once "../model/Categoria.php";

	$objCategoria = new Categoria();

	switch ($_GET["op"]) {

		case 'SaveOrUpdate':
						
			$imagen = $_FILES["imagenProp"]["tmp_name"];
			$ruta = $_FILES["imagenProp"]["name"];
			$nombre = $_POST["txtNombre"]; // Llamamos al input txtNombre
			$tipo_documento = $_POST["cboTipo_Documento"];
			$documento = $_POST["txtNum_Documento"];
			$telefono1 = $_POST["txtTelefono"];
			$telefono2 = $_POST["txtTelefono2"];
			$email = $_POST["txtEmail"];
			$asistencia = $_POST["cboAsistencia"];
			$tipo = $_POST["cboTipo"];
			$comentario = $_POST["txtComentario"];			

			
			if(move_uploaded_file($imagen, "../Files/Propietario/".$ruta)){
			if(empty($_POST["txtIdCategoria"])){
				
				if($objCategoria->Registrar($nombre, $tipo_documento, $documento, $telefono1, $telefono2, $email, $asistencia, $tipo, $comentario, "Files/Propietario/".$ruta)){
					echo "Propietario Registrado";
				}else{
					echo "Propietario no ha podido ser registado.";
				}
			}else{
				
				$idCategoria = $_POST["txtIdCategoria"];
				if($objCategoria->Modificar($idCategoria, $nombre, $tipo_documento, $documento, $telefono1, $telefono2, $email, $asistencia, $tipo, $comentario, "Files/Propietario/".$ruta)){
					echo "Propietario actualizado";
				}else{
					echo "Informacion del Propietario no ha podido ser actualizada.";
				}
			}
		} else {
			$ruta_img = $_POST["txtRutaImgProp"];
			if(empty($_POST["txtIdCategoria"])){

				if($objCategoria->Registrar($nombre, $tipo_documento, $documento, $telefono1, $telefono2, $email, $asistencia, $tipo, $comentario, $ruta_img)){
					echo "Propietario Registrado";
				}else{
					echo "Propietario no ha podido ser registado.";
				}
			}else{

				$idCategoria = $_POST["txtIdCategoria"];
				if($objCategoria->Modificar($idCategoria, $nombre, $tipo_documento, $documento, $telefono1, $telefono2, $email, $asistencia, $tipo, $comentario, $ruta_img)){
					echo "Informacion del Propietario ha sido actualizada";
				}else{
					echo "Informacion del Propietario no ha podido ser actualizada.";
				}
			}
		}



			break;

		case "delete":			
			
			$id = $_POST["id"];// Llamamos a la variable id del js que mandamos por $.post (Categoria.js (Linea 62))
			$result = $objCategoria->Eliminar($id);
			if ($result) {
				echo "Eliminado Exitosamente";
			} else {
				echo "No fue Eliminado";
			}
			break;
		
		case "list":

			$query_Tipo = $objCategoria->Listar();
			$data = Array();
			$i = 1;
			while ($reg = $query_Tipo->fetch_object()) {
				$data[] = array(
					"id"=>$i,
					"1"=>$reg->nombre,
					"2"=>$reg->tipo_documento." ".$reg->documento,
					"3"=>$reg->tipo,
					"4"=>$reg->telefono1,
					"5"=>$reg->email,
					"6"=>$reg->asistencia,
					"7"=>'<button class="btn btn-warning" data-toggle="tooltip" title="Editar" onclick="cargarDataCategoria('.$reg->idcategoria.',\''.$reg->nombre.'\',\''.$reg->tipo_documento.'\',\''.$reg->documento.'\',\''.$reg->telefono1.'\',\''.$reg->telefono2.'\',\''.$reg->email.'\',\''.$reg->asistencia.'\',\''.$reg->tipo.'\',\''.$reg->comentario.'\',\''.$reg->fotografia.'\')"><i class="fa fa-pencil"></i> </button>&nbsp;'.
					'<button class="btn btn-danger" data-toggle="tooltip" title="Eliminar" onclick="eliminarCategoria('.$reg->idcategoria.')"><i class="fa fa-trash"></i> </button>');
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
	