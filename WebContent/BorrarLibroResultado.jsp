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
	<%
		String titulo=request.getParameter("titulo");
		if (titulo!=null){
			ControladorLibro controladorLibro = new ControladorLibro();
			try{
				controladorLibro.borrarLibro(titulo);
				out.println("LIBRO BORRADO");
			} catch(Exception e){
				
				
				out.println("LIBRO NO SE HA PODIDO BORRAR");
			}
			
		}

	%>


</body>
</html>