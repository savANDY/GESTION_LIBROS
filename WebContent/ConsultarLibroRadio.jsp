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
	ArrayList<Libro> libros = controladorLibro.seleccionarTodos();

	%>
	<form action="ConsultarLibroRadio.jsp">
		
	
		<%
			for (Libro libro : libros) {
			%>
			<input type="radio" name="radioAutores" value="<%=libro.getId()%>"><%=libro.getAutor()%></input><br/>
			<%
			
				}
			%>
		<input type="image" src="imagenes/lupa.png" />
	</form>
	
	<%
		
		String radioAutores = request.getParameter("radioAutores");

		if ((radioAutores != null))   {

			
			out.println("BOTON ELEGIDO TIENE EL VALOR : "+radioAutores);
			
			int id=Integer.parseInt(radioAutores);
			try{
				controladorLibro.borrarLibro(id);
				%><br/>
				<% 
				out.println("LIBRO BORRADO");
				
			}catch (Exception e){
				out.println("ERROR AL BORRAR EL LIBRO");
			}
			
			
			
			
		}
		%>
</body>
</html>