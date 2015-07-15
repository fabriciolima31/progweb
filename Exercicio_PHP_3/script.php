<?php 
	$HOST = "fabriciolima31-progweb-1672046";
	$USER = "root";
	$PASS = "";
	$DB = "coments";


	$connect = mysqli_connect($HOST, $USER, $PASS, $DB) or 
		die(mysql_error());
	
	mysql_select_db($DB) or die(mysql_error());

	$nome = $_GET['nome'];
	$sexo = $_GET['sexo'];
	$comentario = $_GET['comentario'];

	$sql = "INSERT INTO usuario(nome, sexo, comentario) VALUES('".$nome."','".$sexo."','".$comentario."')";

	mysql_query($sql) or die(mysql_error());

	echo "Nome: ".$nome."<br>";
	echo "Sexo: ".$sexo."<br>";
	echo "Comentario".$comentario."<br>";
?>