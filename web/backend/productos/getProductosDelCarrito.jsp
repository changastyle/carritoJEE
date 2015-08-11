<%@page import="model.Producto"%>
<%

    out.print("<ul>");
    
    for(Producto p : controller.Controller.getProductosDelCarrito())
    {
        out.print("<li>");
        out.print(p.getNombre());
        out.print("</li>");
    }
    
    out.print("</ul>");
%>