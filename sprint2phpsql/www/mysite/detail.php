<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
	<head>
		<style>
			img {
				border-radius: 10px;
				height: 250px;
				width: 250px;
			}
		</style>
	</head>
	<body>
		<?php
			if(!isset($_GET['cancion_id'])){
				die('No se ha especificado una canción');
			}
			$cancion_id = $_GET['cancion_id'];
			$query = 'select * from tCanciones where id='.$cancion_id;
			$result = mysqli_query($db, $query) or die('Query error');
			$only_row = mysqli_fetch_array($result);
			echo '<h1>'.$only_row[1].'</h1>';
			echo '<h2>'.$only_row[3].'</h2>';
			echo '<h2>'.$only_row[4].'</h2>';
			echo '<img src='.$only_row[2].'>';
		?>
		<h3>Comentarios</h3>
		<ul>
		<?php
			$query2 = 'select * from tComentarios where cancion_id = '.$cancion_id;
			$result2 = mysqli_query($db, $query2) or die ('Query error');
			while ($row = mysqli_fetch_array($result2)) {
				echo '<li>'.$row['comentario'].'</li>';
			}
			mysqli_close($db);
		?>
		</ul>
		<p>Deja un nuevo comentario: </p>
		<form action="/comment.php" method="post">
			<textarea rows="4" cols="50" name="new_commet"></textarea><br>
			<input type="hidden" name="cancion_id" value="<?php echo $cancion_id; ?>"><br>
			<input type="submit" value="Comentar">
		</form>
	</body>
</html>
