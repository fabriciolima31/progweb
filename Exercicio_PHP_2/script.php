<?php 
	$HOST = getenv('IP');
	$USER = getenv('C9_USER');
	$PASS = "Bleach.123";
	$DB = "coments";

	$connect = mysql_connect($HOST, $USER, $PASS) or 
		die(mysql_error());
	
	mysql_select_db($DB) or die(mysql_error());

	$nome = $_GET['nome'];
	$sexo = $_GET['sexo'];
	$comentario = $_GET['comentario'];

	$sql = "INSERT INTO usuario(nome, sexo, comentario) VALUES('".$nome."','".$sexo."','".$comentario."')";

	mysql_query($sql) or die(mysql_error());

	echo "Nome: ".$nome."<br>";
	echo "Sexo: ".$sexo."<br>";
	echo "Comentario: ".$comentario."<br>";
?>