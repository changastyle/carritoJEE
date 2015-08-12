<%-- 
    Document   : quitarProductoAlCarrito
    Created on : 11/08/2015, 18:17:56
    Author     : NICOLAS
--%>

<%@page import="model.Producto"%>
<%
    String strIDProducto = request.getParameter("idProducto").trim();
    int idProducto;
    boolean eliminado = false;
    try
    {
       idProducto = Integer.parseInt(strIDProducto);
       //out.print("Recibí: " + strIDProducto);
       
        //Producto productoSeleccionado = controller.Controller.findProducto(idProducto);
        eliminado = controller.Controller.sacarProductoDelCarrito(idProducto);
        out.print(eliminado);
       
    }
    catch(Exception e)
    {
        e.printStackTrace();
        out.print(eliminado);
        //out.print("ERROR: Conversion: " + strIDProducto );
    }
    

%>