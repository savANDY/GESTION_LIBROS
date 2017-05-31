<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>NUEVO LIBRO</title>
<style>
body {
	background-color: #FFC;
}
h1 {
	text-align: center;
	margin-top: 100px;
}
table {
	background: #FF6;
	padding: 10px;
	border: solid 2px #000000;
	margin: auto;
}

td {
	padding: 5px 0;
}
</style>
</head>
<body>
	<h1 style="text-align: center">NUEVO LIBRO</h1>
	<form action="NuevoLibroResultado.jsp" method="get">

		<table width="50%">
			<tr>
				<td width="30%"><label for="titulo">Titulo: </label></td>
				<td width="70%"><input type="text" name="titulo" id="titulo"></td>
			</tr>
			<tr>
				<td><label for="autor">Autor: </label></td>
				<td><input type="text" name="autor" id="autor"></td>
			</tr>
			<tr>
				<td><label for="numpag">Num Paginas: </label></td>
				<td><input type="text" name="numpag" id="numpag"></td>
			</tr>

			<tr>
				<td align="center"><input type="submit" name="submit"
					id="button" value="Guardar"></td>
				<td align="center"><input type="reset" name="reset" id="button"
					value="Cancelar"></td>
			</tr>
		</table>
		<p>
			<br>
		</p>
	</form>


</body>
</html>