<?php
	
	session_start();

	if (!isset($_SESSION['user'])) {
		if ($_POST['user']=='demo' && $_POST['password']=='demo') {
			$_SESSION['user'] = $_POST['user'];
			header("Location: comentarios.php");
		}else{
			echo "Usuario ou senha invalido";
		}
	}else{
		header("Location: comentarios.php");
	}





?>