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
            <td class="formularioCargaProductoColumnaUNO">Imagen:</td>
            <td class="formularioCargaProductoColumnaDOS"><input class="inputsFormularioCargaProducto" id="inputPrecio" type="file" name="imagenProducto" ></td>
        </tr>
        <tr>
            <td colspan="2"><input  class="inputsFormularioCargaProducto" type="submit" value="Agregar Producto"></td>
        </tr>
    </table>
    <form id="upload" method="post" action="upload.php" enctype="multipart/form-data">
        <div id="drop">
                Drop Here

                <a>Browse</a>
                <input type="file" name="upl" multiple />
        </div>

        <ul>
                <!-- The file uploads will be shown here -->
        </ul>

    </form>
</form>

