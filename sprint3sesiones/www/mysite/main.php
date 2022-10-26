<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
	<head>
		<style>
			img  {
				border-radius:8px;
				height: 150px;
				width: 150px;
			}
			table, tr, th, td {
				tablet-layout: fixed;
				width: 50%;
				border-collapse: collapse;
				border: 3px solid purple;
				text-align:center;
			}
		</style>
	</head>
	<body>
		<h1>Canciones</h1>
		<table>
			<tr>
				<th>Cancion</th>
				<th>Imagen Url</th>
				<th>Artista</th>
				<th>Genero</th>
			</tr>
			<?php
				// Lanzar una query
				$query = 'select * from tCanciones';
				$result = mysqli_query($db, $query) or die ('Query error');
				//Recorrer el resultado
				while($row = mysqli_fetch_array($result)) {
					echo '<tr>';
					echo '<td><a href="/detail.php?cancion_id='.$row[0].'">'.$row[0].'</td>';
					echo '<td>'.$row[1].'</td>';
					echo '<td><img src='.$row[2].'></td>';
 					echo '<td>'.$row[3].'</td>';
					echo '<td>'.$row[4].'</td>';
					echo '</tr>';
				}
				mysqli_close($db);
			?>
		</table>
		<a href="/logout.php">Cerrar Sesión</a>
	</body>
</html>
