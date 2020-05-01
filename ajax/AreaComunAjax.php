<?php

	session_start();

	require_once "../model/AreaComun.php";

	$objAreaComun = new AreaComun();

	switch ($_GET["op"]) {

		case 'SaveOrUpdate':			

			$nombre = $_POST["txtNombre"]; // Llamamos al input txtNombre
            $reserva = $_POST["txtReserva"];
            $reservabloque = $_POST["txtReservaBloque"];
            $cantidad = $_POST["txtCantidad"];
            $ubicacion = $_POST["txtUbicacion"];
            $descripcion = $_POST["txtDescripcion"];
            $imagen = $_FILES["imagenArt"]["tmp_name"];
			$ruta = $_FILES["imagenArt"]["name"];
        

            if(move_uploaded_file($imagen, "../Files/AreaComun/".$ruta)){

				if(empty($_POST["txtIdAreaComun"])){
                  					if($objAreaComun->Registrar($nombre, $reserva, $reservabloque, $cantidad,$ubicacion, $descripcion, "Files/AreaComun/".$ruta)){
						echo "Área Común Registrada";
					}else{
						echo "La Área Común no ha podido ser registrada.";
					}
				}else{


					$idarea = $_POST["txtIdAreaComun"];
					if($objAreaComun->Modificar($idarea,$nombre, $reserva, $reservabloque, $cantidad,$ubicacion, $descripcion, "Files/AreaComun/".$ruta)){
						echo "Informacion ha sido actualizada";
					}else{
						echo "Informacion no ha podido ser actualizada.";
					}
				}
			} else {
				$ruta_img = $_POST["txtRutaImgArt"];
				if(empty($_POST["txtIdAreaComun"])){

					if($objAreaComun->Registrar($nombre, $reserva, $reservabloque, $cantidad,$ubicacion, $descripcion, $ruta_img)){
						echo "Area Común Registrada";
					}else{
						echo "La Área Común no ha podido ser registrada.";
					}
				}else{

					$idarea = $_POST["txtIdAreaComun"];
					if($objAreaComun->Modificar($idarea, $nombre, $reserva, $reservabloque, $cantidad,$ubicacion, $descripcion, $ruta_img)){
						echo "Informacion ha sido actualizada";
					}else{
						echo "Informacion no ha podido ser actualizada.";
					}
				}
			}

			break;

		case "delete":			
			
			$id = $_POST["id"];// Llamamos a la variable id del js que mandamos por $.post (Categoria.js (Linea 62))
			$result = $objAreaComun->Eliminar($id);
			if ($result) {
				echo "Eliminado Exitosamente";
			} else {
				echo "No fue Eliminado";
			}
			break;
		
		case "list":

			$query_Tipo = $objAreaComun->Listar();
			$data = Array();
			$i = 1;
			while ($reg = $query_Tipo->fetch_object()) {
				$data[] = array(
					"id"=>$i,
                    "1"=>$reg->nombre,
                    "2"=>$reg->reserva,        
					"3"=>'<button class="btn btn-warning" data-toggle="tooltip" title="Editar" onclick="cargarDataAreaComun('.$reg->idarea.',\''.$reg->nombre.'\',\''.$reg->reserva.'\',\''.$reg->reservabloque.'\',\''.$reg->cantidad.'\',\''.$reg->ubicacion.'\',\''.$reg->descripcion.'\',\''.$reg->imagen.'\')"><i class="fa fa-pencil"></i> </button>&nbsp;'.
					'<button class="btn btn-danger" data-toggle="tooltip" title="Eliminar" onclick="eliminarAreaComun('.$reg->idarea.')"><i class="fa fa-trash"></i> </button>');
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