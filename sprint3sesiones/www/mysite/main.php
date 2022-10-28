<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
	<head>
		<style>
			* {
  				font-family: Helvetica Neue, Arial, sans-serif;
			}

			body {
				background-image: linear-gradient(#aaa 25%, #000);
			}

			h1,table {
				text-align: center;
			}

			table {
				border-collapse: collapse;
				width: 50%;
				margin: 0 auto 5rem;
			}

			th,td {
				padding: 1.5rem;
				font-size: 1.3rem;
			}

			tr {
				background: hsl(50, 50%, 80%);
			}

			tr,td {
				transition: 0.4s ease-in;
			}

			tr:first-child {
				background: hsla(12, 100%, 40%, 0.5);
			}

			tr:nth-child(even) {
				background: hsla(50, 50%, 80%, 0.7);
			}

			td:empty {
				background: hsla(50, 25%, 60%, 0.7);
			}

			tr:hover:not(#firstrow),tr:hover td:empty {
				background: #ff0;
				pointer-events: visible;
			}

			tr:hover:not(#firstrow) {
				transform: scale(1.1);
				font-weight: 100;
				box-shadow: 0px 3px 7px rgba(0, 0, 0, 0.5);
			}

			a {
				text-decoration: none;
				color: blue;
			}
			a:hover {
				color: red;
			}

			a {
				transition: color 0.8s linear 0.2s;
			}

			img  {
				border-radius:8px;
				height: 150px;
				width: 150px;
			}
		</style>
	</head>
	<body>
		<a href="/changePassword.php">Cambiar contraseña</a>
		<h1>Canciones</h1>
		<table>
			<tr id="firstrow">
				<th>Id</th>
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
