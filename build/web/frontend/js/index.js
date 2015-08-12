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
    ({url: "backend/productos/carrito.jsp"}).done(function(result)
    {
       $("#carrito").html(result);
    });
}
function minimizarCarrito()
{
    $("#carrito").hide("slow");
}
function quitarProducto(idProducto)
{
    console.log("Voy a quitar: " + idProducto);

    
    $.ajax( {url: "backend/productos/quitarProductoAlCarrito.jsp", data: {"idProducto": idProducto},beforeSend: function (xhr) 
        {
            $("#carrito").html("<img src='frontend/img/cargando.gif'>");
        }, success: function (data, textStatus, jqXHR) 
        {
            console.log("eliminado:" + data.trim());
            $.ajax
            ({url: "backend/productos/carrito.jsp"}).done(function(result)
            {
               $("#carrito").html(result);
            });
        }
    });
    
}
$(document).ready(function()
{
    buscarProductos();
    
    $.post("frontend/formularios/formularioCargaProducto.jsp",function(data)
    {
        $("#bodyColumnaDerecha").html(data);
    });
    
});