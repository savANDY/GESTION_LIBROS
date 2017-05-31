<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	width:85%;
}

td,th {
	padding: 5px 0;
}
th{
text-align:center;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BORRAR LIBRO</title>
</head>
<body>
	<h1 style="text-align: center">BORRAR LIBRO</h1>

	<%@page import="eus.zornotza.controlador.*"%>
	<%@page import="eus.zornotza.modelo.*"%>
	<%@page import="java.util.ArrayList"%>

	<%
		ControladorLibro controladorLibro = new ControladorLibro();

		ArrayList<Libro> libros = controladorLibro.abrirListarLibros();
	%>
	<table>
		<tr>
			<th width="35%">TITULO</th>
			<th width="35%">AUTOR</th>
			<th width="15%">NUM DE PAGINAS</th>
			<th width="15%">ACCIONES</th>
		</tr>
		<%
		for (Libro libro : libros) {
		%>
		<tr>
			<td width="35%"><%=libro.getTitulo()%></td>
			<td width="35%"><%=libro.getAutor()%></td>
			<td width="15%"><%=libro.getNum_pag()%></td>
			<td width="15%"><a href="BorrarLibroResultado.jsp?titulo=<%=libro.getTitulo() %>">BORRAR</a></td>
		</tr>
		
		
		<%
		}
	%>
	</table>




</body>
</html>