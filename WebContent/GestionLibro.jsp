<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	background-color: #FFC;
}
#menu {
	background: #FF6;
	width: 50%;
	padding: 10px;
	border: solid 2px #000000;
	margin: auto;
}

h1 {
	text-align: center;
	margin-top: 100px;
}

form {
	margin: 20px auto;
	border: solid 1px #000000;
	width: 50%;
}
input {
	margin: auto;
	width: 100%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GESTION LIBROS</title>
</head>
<body>

	<h1 id="titulo">GESTION DE LIBROS</h1>
	<div id="menu">
		<form action="NuevoLibro.jsp" class="botones">
			<input type="submit" value="Nuevo Libro" />
		</form>

		<form action="BorrarLibro.jsp" class="botones">
			<input type="submit" value="Borrar Libro" />
		</form>
		<form action="ConsultarLibro.jsp" class="botones">
			<input type="submit" value="Consultar Libros" />
		</form>
		<form action="ListarLibros.jsp" class="botones">
			<input type="submit" value="Listar Libros" />
		</form>
	</div>
	

</body>
</html>