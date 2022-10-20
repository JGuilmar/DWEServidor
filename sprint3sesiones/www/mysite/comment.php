<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
	<body>
		<?php
			$cancion_id = $_POST['cancion_id'];
			$fecha = $_POST['fecha'];
			$comentario = $_POST['new_comment'];

			echo $comentario;
			$query = "insert into tComentarios(comentario, usuario_id, cancion_id) values ('".$comentario."', null, ".$cancion_id.")";

			mysqli_query($db, $query) or die ("Error");

			echo "<p>Nuevo comentario ";
			echo mysqli_insert_id($db);
			echo " añadido</p>";

			echo "<a href='/detail.php?cancion_id=".$cancion_id."'>Volver</a>";
			mysqli_close($db);
		?>
	</body>
</html>
