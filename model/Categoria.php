<?php
	require "Conexion.php";

	class Categoria{
	
		
		public function __construct(){
		}

		public function Registrar($nombre, $tipo_documento, $documento, $telefono1, $telefono2, $email, $asistencia, $tipo, $comentario, $fotografia){
			global $conexion;
			$sql = "INSERT INTO propietario(nombre, tipo_documento, documento, telefono1, telefono2, email, asistencia, tipo, comentario, fotografia, estado)
						VALUES('$nombre', '$tipo_documento', '$documento', '$telefono1', '$telefono2', '$email', '$asistencia', '$tipo', '$comentario', '$fotografia', 'A')";
			$query = $conexion->query($sql);
			return $query;
		}
		
		public function Modificar($idcategoria, $nombre, $tipo_documento, $documento, $telefono1, $telefono2, $email, $asistencia, $tipo, $comentario, $fotografia){
			global $conexion;
			$sql = "UPDATE propietario set nombre = '$nombre', tipo_documento='$tipo_documento', documento = '$documento', telefono1 = '$telefono1', telefono2='$telefono2', email ='$email', asistencia='$asistencia', tipo='$tipo', comentario='$comentario', fotografia = '$fotografia'
						WHERE idcategoria = $idcategoria";
			$query = $conexion->query($sql);
			return $query;
		}
		
		public function Eliminar($idcategoria){
			global $conexion;
			$sql = "UPDATE propietario SET estado = 'C' WHERE idcategoria = $idcategoria";
			$query = $conexion->query($sql);
			return $query;
		}

		public function Listar(){
			global $conexion;
			$sql = "SELECT * FROM propietario where estado = 'A' order by idcategoria desc";
			$query = $conexion->query($sql);
			return $query;
		}
		public function Reporte(){
			global $conexion;
			$sql = "SELECT * FROM propietario order by nombre asc";
			$query = $conexion->query($sql);
			return $query;
		}

		public function ListarUM(){
			global $conexion;
			$sql = "SELECT * FROM unidad_medida";
			$query = $conexion->query($sql);
			return $query;
		}

		public function ListarSucursal(){
			global $conexion;
			$sql = "SELECT * FROM sucursal";
			$query = $conexion->query($sql);
			return $query;
		}

		public function ListarEmpleado(){
			global $conexion;
			$sql = "SELECT * FROM empleado";
			$query = $conexion->query($sql);
			return $query;
		}

		public function VerNoticiaCategoria(){
			global $conexion;
			$sql = "select * from propietario
	where nombre = 'Noticias' or nombre = 'Noticia' or nombre = 'noticia' or nombre = 'noticias'";
			$query = $conexion->query($sql);
			return $query;
		}

	}
