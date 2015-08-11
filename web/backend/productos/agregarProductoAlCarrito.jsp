<%-- 
    Document   : agregarProductoAlCarrito
    Created on : 10/08/2015, 22:23:03
    Author     : NICOLAS
--%>

<%@page import="model.Producto"%>
<%
    int idProducto = controller.Controller.getIdUltimoProducto();
    Producto productoSeleccionado = controller.Controller.findProducto(idProducto);
    controller.Controller.agregarProductoAlCarrito(productoSeleccionado);

%>