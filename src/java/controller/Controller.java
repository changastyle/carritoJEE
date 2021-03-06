package controller;

import java.util.ArrayList;
import model.Producto;

public class Controller
{
    private static ArrayList<Producto> productosDelCarrito = new ArrayList<Producto>();
    private static int idUltimoProducto;
    
    public static void agregarProductoAlCarrito(Producto producto)
    {
        productosDelCarrito.add(producto);
    }
    public static boolean sacarProductoDelCarrito(int IDProducto)
    {
        boolean eliminado = false;
        if(productosDelCarrito.size() > 0)
        {
            for(Producto p : productosDelCarrito)
            {
                if(p.getId() == IDProducto)
                {
                    if(eliminado != true)
                    {
                        productosDelCarrito.remove(p);
                        eliminado = true;
                        break;
                    }
                }
            }
        }
        
        return eliminado;
    }
    public static ArrayList<Producto> getProductosDelCarrito()
    {
        return productosDelCarrito;
    }
    public static ArrayList<Producto> findAllProductos()
    {
        return daos.ProductoDAO.findAll();
    }
    public static ArrayList<Producto> buscarProductos(String metadatos)
    {
        return daos.ProductoDAO.search(metadatos);
    }
    public static Producto findProducto(int idProducto)
    {
        return daos.ProductoDAO.find(idProducto);
    }
    public static boolean insertarProducto(Producto producto)
    {
        return daos.ProductoDAO.insertarProducto(producto);
    }
    
    
    /*GYS*/

    public static int getIdUltimoProducto()
    {
        return idUltimoProducto;
    }

    public static void setIdUltimoProducto(int idUltimoProducto)
    {
        Controller.idUltimoProducto = idUltimoProducto;
    }
    
}
