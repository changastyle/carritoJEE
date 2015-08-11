<%@page contentType="text/html" pageEncoding="UTF-8"%>
<form action="backend/productos/altaProducto.jsp" method="POST">
    <table id="tablaFormularioCargaProducto">
        <tr>
            <td class="formularioCargaProductoColumnaUNO">Nombre Producto:</td>
            <td class="formularioCargaProductoColumnaDOS"><input class="inputsFormularioCargaProducto" id="inputNombreProducto" type="text" name="nombreProducto" ></td>
        </tr>
        <tr>
            <td class="formularioCargaProductoColumnaUNO">Precio:</td>
            <td class="formularioCargaProductoColumnaDOS"><input class="inputsFormularioCargaProducto" id="inputPrecio" type="number" name="precioProducto" ></td>
        </tr>
        <tr>
            <td colspan="2"><input  class="inputsFormularioCargaProducto" type="submit" value="Agregar Producto"></td>
        </tr>
    </table>
</form>

