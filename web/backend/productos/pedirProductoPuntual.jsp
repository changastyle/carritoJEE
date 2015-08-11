<%@page import="model.Producto"%>
<%
    String idProducto = request.getParameter("idProducto");
    
    Producto productoRespuesta = controller.Controller.findProducto(Integer.parseInt(idProducto));
    
    if(productoRespuesta != null)
    {
        controller.Controller.setIdUltimoProducto(Integer.parseInt(idProducto));
        //out.print(idProducto + "" + productoRespuesta.getNombre() + " $" + productoRespuesta.getPrecio());
        out.print("<div id='HeaderProductoPuntual'>");
        out.print(productoRespuesta.getNombre()); 
        out.print("</div>");
        
        out.print("<table id='tablaProductoPuntual'>");
        out.print("<tr>");
            out.print("<td>");
            out.print("Precio:");
            out.print("</td>");
            out.print("<td>");
            out.print("$" + productoRespuesta.getPrecio());
            out.print("</td>");
        out.print("</tr>");
        out.print("</table>");
        out.print("<button id='botonAgregarProductoPuntual' onclick='agregarProductoAlCarro()'>Agregar al Chango</button>");
    }
    else
    { out.print("No existe Producto con ID: " + idProducto );
    }
    
%>