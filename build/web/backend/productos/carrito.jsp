<%@page import="model.Producto"%>
<div id="ventanaCarrito">
    <img id='cruzCierreCarrito' src='frontend/img/cruz.png' onclick='minimizarCarrito()'>
</div>
<div id="contenidoCarrito">
<%

    out.print("<table id='tablaCarrito' border='1'>");
    
    out.print("<tr><td class='tablaCarritoColUNO tablaCarritoHeaders'>Producto</td></td><td class='tablaCarritoColDOS tablaCarritoHeaders'>Precio</td></tr>");
    for(Producto p : controller.Controller.getProductosDelCarrito())
    {
        out.print("<tr>");
            out.print("<td class='tablaCarritoColUNO'>");
                 out.print(p.getNombre());
            out.print("</td>");
            out.print("<td class='tablaCarritoColDOS'>");
                 out.print("$" + p.getPrecio());
            out.print("</td>");
            out.print("<td class='tablaCarritoColTRES'>");
                 out.print("<button id='botonQuitarProducto' onclick='quitarProducto(\"" +p.getId()+"\")'>x</button>");
            out.print("</td>");
        out.print("</tr>");
    }
    
    out.print("</table>");
%>
</div>
<div id="carri">
    <input type="number"  id="inputCantidad"/>
</div>

<button id="botonConfirmarCompra">Confirmar Compra</button>