<%@page import="java.util.ArrayList"%>
<%@page import="model.Producto"%>
<%
    String propiedadesLI = " class='itemsListas' onclick='openProducto(this)' ";
    String metadatos = request.getParameter("metadatos");
    out.print("Metadatos:");
    out.print("<ul class='listas' id='listaProductos'>");
    
    if(metadatos == null || metadatos.trim().equals(""))
    {
        ArrayList<Producto> arr = controller.Controller.findAllProductos();
        
        for(Producto producto : arr)
        {
            out.print("<li " + propiedadesLI +" id='" + producto.getId() + "'>" + producto.getNombre() +"</li>");
        }
    }
    else
    {   
        ArrayList<Producto> arr = controller.Controller.buscarProductos(metadatos);
        //ArrayList<Producto> arr = controller.Controller.findAllProductos();
        if(arr.size() > 0)
        {
            for(Producto producto : arr)
            {
                out.print("<li "+ propiedadesLI +" id='" + producto.getId() + "'>" + producto.getNombre() +"</li>");
            }
        }   
    }
    out.print("</ul>");
%>