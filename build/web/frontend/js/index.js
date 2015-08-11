function buscarProductos()
{
    metadatos = $("#barraBusquedaProductos").val();
    console.log(metadatos);
    
    $.ajax
    ({url: "backend/productos/buscarProductos.jsp", data: { 'metadatos' : metadatos }}).done(function(result)
    {
        $("#bodyColumnaProductos").html(result);
        //console.log(data);
    });
}
function openProducto(quien)
{
    idProducto = quien.id;
    console.log("Abriendo Producto: " + idProducto);
    
    $.ajax
    ({url: "backend/productos/pedirProductoPuntual.jsp", data: { 'idProducto' : idProducto }}).done(function(result)
    {
        $("#bodyColumnaMedio").html(result);
    });
    
}
function agregarProductoAlCarro()
{
    $.ajax
    ({url: "backend/productos/agregarProductoAlCarrito.jsp"}).done(function(result)
    {
        $("#carrito").show("slow");
        
        llenarCarritoFrontend();
       
       
    });
    //console.log();
}
function llenarCarritoFrontend()
{
    $.ajax
    ({url: "backend/productos/getProductosDelCarrito.jsp"}).done(function(result)
    {
       $("#carrito").html(result);
       $("#carrito").append("<img id='cruzCierreCarrito' src='frontend/img/cruz.png' onclick='minimizarCarrito()'>");
    });
}
function minimizarCarrito()
{
    $("#carrito").hide("slow");
}
$(document).ready(function()
{
    buscarProductos();
    
    $.post("frontend/formularios/formularioCargaProducto.jsp",function(data)
    {
        $("#bodyColumnaDerecha").html(data);
    });
    
});