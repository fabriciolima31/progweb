<!DOCTYPE html>
<html>
	<head>
		<title>Minha Primeira Pagina</title>
	</head>
<body>
	<H1>Este e um grande cabe�alho</H1>
	<h3>Este aqui e um pequeno cabe�alho</h3>
	
	<p align="right"><?php session_start(); echo "USER: ".$_SESSION['user']; ?></p>
	<p align="justify"><br>Aqui eu coloquei um paragrafo com um texto aleatorio, e a seguir vou inserir um formulario dentro da tabela.<br>
	 Alem disso, aqui vai um link: <a href="http://icomp.ufam.edu.br">http://icomp.ufam.edu.br/davname</a></p>

	<form name="principalform" action="script.php"  method="get" >
		<table>
			<tr>
				<td>
				<label>Seu Nome</label>
				</td>
				<td>
					<input name="nome" type="text">
				</td>
			</tr>
			<tr>
				<td>
				<label>Seu sexo</label>
				</td>
				<td>
					<select name="sexo">
						<option>Masculino</option>
						<option>Feminino</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label>Seus <br>
					comentarios</label>
				</td>
				<td>
					<textarea name="comentario" rows="10" cols="50"></textarea>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input name="enviar" type="submit" value="Enviar">
				</td>
			</tr>
		</table>
	</form>
</body>