<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="eus.zornotza.controlador.*"%>
	<%@page import="eus.zornotza.modelo.*"%>

	<%@page import="java.util.ArrayList"%>

	<%
		ControladorLibro controladorLibro = new ControladorLibro();
		ArrayList<String> autores = new ArrayList<String>();

		autores = controladorLibro.abrirConsultarLibro();
	%>
	<form action="ConsultarLibro.jsp">
		<select name="autor_selec">
		<%
			for (String autor : autores) {
			%>
			<option ><%=autor%></option>
			<%
				}
			%>
		</select>
	<br/><br/>
	<%	
		ArrayList<Libro> libros = controladorLibro.seleccionarTodos();
	%>
	
		<select name="todos">
		<%
			for (Libro libro : libros) {
			%>
			<option value="<%=libro.getNum_pag()%>"><%=libro.getTitulo()%>&nbsp;&nbsp;ESCRITO POR :<%=libro.getAutor()%></option>
			<%
				}
			%>
		</select>
		
	
		
		<input type="image" src="imagenes/lupa.png" />
	</form>
	
	<%
		String autor_selec = request.getParameter("autor_selec");
		String todos = request.getParameter("todos");
		
		if ((autor_selec != null) && (todos != null) )   {

			libros = controladorLibro.seleccionarLibrosPorAutor(autor_selec);
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
		
				</tr>
				<%
					}
				%>
			</table>
			
			<h2>EL NUM DE PAGINAS ES <%=todos %></h2>
			
			<%
			

			
				}
	%>
</body>
</html>