<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>

<html>
	<body>
		<a href="/logout.php">Cerrar Sesión</a>
		<h1>Cambiar contraseña</h1>
		<form id="formulario" method="post" action="changePassword.php">
			<label>Contraseña actual: </label>
			<input type="password" name="pass_actual">

			<label>Nueva contraseña: </label>
			<input type="password" name="pass_nueva">

			<input type="submit" name="submit" value="Submit">
		</form>

		<?php
			$currentPass = $_POST['pass_actual'];
			$newPass =  $_POST['pass_nueva'];

			if(!empty($currentPass) && !empty($newPass)){
				session_start();
				$query = "select contraseña from tUsuarios where id = {$_SESSION['user_id']}";
				$result = mysqli_query($db, $query) or die('Query error');
				$row = mysqli_fetch_array($result);

				if($currentPass == $row[0] && $currentPass != $newPass){
					$query2 = "update tUsuarios set contraseña = '$newPass' where id = {$_SESSION['user_id']}";
					mysqli_query($db, $query2) or die('Query error');
					header('Location: newPass.html');
				}
			}
		?>
		<a href="main.php">Main</a>
	</body>
</html>
