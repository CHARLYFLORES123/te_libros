<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Libro"%>
<%@page import="java.util.List"%>
<%
List<Libro> lista = (List<Libro>)request.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Libros</h1>
        <p><a href = "MainController?op=nuevo">Nuevo</a></p>
        <table border ="1">
            <tr>
                <th>Id</th>
                <th>ISBN</th>
                <th>Titulo</th>
                <th>Categoria</th>
                <th></th>
            </tr>
            <c:forEach var = "item" items = "$(lista)">
            <c/>c:forEach>
            </c:forEach>
            <tr>
                <td>$(item.id)</td>
                <td>$(item.jsdn)</td>
                <td>$(item.categoria)</td>
                
                <td>
                    <a href="MainController?op=eliminat&id-sS(item.id)>(item.id)" onclick = "return(confirm('Esta Seguro?'))>Eliminar</a>
                    </td>
            </tr>
            
        </table>
    </body>
</html>
