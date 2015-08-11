<%@page import="model.Producto"%>
<%
String nombreProducto = request.getParameter("nombreProducto");
int precio = Integer.parseInt(request.getParameter("precioProducto"));

Producto producto = new Producto(nombreProducto, precio);


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

