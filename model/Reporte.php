<?php
	require "Conexion.php";

	class Reporte{
	
		
		public function __construct(){
		}

		public function Registrar($espacio, $categoria, $telefono, $titulo, $descripcion, $imagen){
			global $conexion;
			$sql = "INSERT INTO reporte(espacio, categoria, telefono, titulo, descripcion, imagen, estado)
						VALUES('$espacio', '$categoria','$telefono','$titulo','$descripcion', '$imagen','A')";
			$query = $conexion->query($sql);
			return $query;
		}
		
		public function Modificar($idreporte, $espacio, $categoria, $telefono, $titulo, $descripcion, $imagen){
			global $conexion;
			$sql = "UPDATE reporte set espacio = '$espacio',categoria = '$categoria', telefono = '$telefono', titulo = '$titulo', descripcion='$descripcion', imagen='$imagen'
						WHERE idreporte = $idreporte";
			$query = $conexion->query($sql);
			return $query;
		}
		
		public function Eliminar($idreporte){
			global $conexion;
			$sql = "UPDATE reporte SET estado = 'C' WHERE idreporte = $idreporte";
			$query = $conexion->query($sql);
			return $query;
		}

		public function Listar(){
			global $conexion;
			$sql = "SELECT * FROM reporte where estado = 'A' order by idreporte desc";
			$query = $conexion->query($sql);
			return $query;
		}
		public function Reporte(){
			global $conexion;
			$sql = "SELECT * FROM reporte where estado = 'A' order by idreporte desc";
			$query = $conexion->query($sql);
			return $query;
		}

	

	}
