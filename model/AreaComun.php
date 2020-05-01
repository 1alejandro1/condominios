<?php
	require "Conexion.php";

	class AreaComun{
	
		
		public function __construct(){
		}

		public function Registrar($nombre, $reserva, $reservabloque, $cantidad, $ubicacion, $descripcion, $imagen ){
			global $conexion;
			$sql = "INSERT INTO area_comun(nombre, reserva, reservabloque, cantidad, ubicacion, descripcion, imagen, estado)
						VALUES('$nombre', '$reserva','$reservabloque','$cantidad','$ubicacion', '$descripcion', '$imagen','A')";
			$query = $conexion->query($sql);
			return $query;
		}
		
		public function Modificar($idarea, $nombre, $reserva, $reservabloque, $cantidad, $ubicacion, $descripcion, $imagen ){
			global $conexion;
			$sql = "UPDATE area_comun set nombre = '$nombre',reserva = '$reserva', reservabloque = '$reservabloque', cantidad = '$cantidad', ubicacion='$ubicacion', descripcion = '$descripcion', imagen='$imagen'  
						   WHERE idarea = $idarea";
			$query = $conexion->query($sql);
			return $query;
		}
		
		public function Eliminar($idarea){
			global $conexion;
			$sql = "UPDATE area_comun SET estado = 'C' WHERE idarea = $idarea";
			$query = $conexion->query($sql);
			return $query;
		}

		public function Listar(){
			global $conexion;
			$sql = "SELECT * FROM area_comun where estado = 'A' order by idarea desc";
			$query = $conexion->query($sql);
			return $query;
		}
		public function Reporte(){
			global $conexion;
            $sql = "SELECT * FROM area_comun where estado = 'A' order by idarea desc";
			$query = $conexion->query($sql);
			return $query;
		}

	

	}
