<%@page import="model.Producto"%>
<%
String nombreProducto = request.getParameter("nombreProducto");
int precio = Integer.parseInt(request.getParameter("precioProducto"));
String imagenProducto = request.getParameter("imagenProducto");

Producto producto = new Producto(nombreProducto, precio, imagenProducto);


if(controller.Controller.insertarProducto(producto))
{
    out.print("Insertado Correctamente");
    response.sendRedirect("../../index.html");
}
else
{
    out.print("Error al insertar:");
}
%>

