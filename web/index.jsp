<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Productos"%>
<%@page import="com.emergentes.modelo.GestorProductos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
if(session.getAttribute("agenda")==null){
    GestorProductos objeto1=new GestorProductos();  
    session.setAttribute("agenda", objeto1);
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - Productos</title>
    </head>
    <body>
        <h1 >PRODUCTOS</h1>
       <a href="Controller?op=nuevo" >Nuevo Producto</a><br><br>
       <table border="1" cellspacing="0" >
            <tr>
                <th>Id</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th>Modificar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.producto}</td>
                    <td>${item.precio}</td>
                    <td>${item.cantidad}</td>
                    <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                    <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
                </tr>
                
            </c:forEach>
        </table>
    </body>
</html>
