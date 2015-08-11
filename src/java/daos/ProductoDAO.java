package daos;

import java.util.ArrayList;
import model.Producto;

public class ProductoDAO
{
    public static ArrayList<Producto> findAll()
    {
        ArrayList<Producto> arrRespuesta = new ArrayList<>();
        ArrayList<Object> arrProvisorio = (ArrayList<Object>) daos.AbstractDAO.findAll(Producto.class);
        
        for(Object o : arrProvisorio)
        {
            Producto producto = (Producto) o;
            arrRespuesta.add(producto);
        }
        
        return arrRespuesta;
    }
    public static ArrayList<Producto> search(String metadatos)
    {
        ArrayList<Producto> arrRespuesta = new ArrayList<>();
        String hql = "from Producto p WHERE p.nombre LIKE '%" + metadatos + "%'";
        ArrayList<Object> arrProvisorio = (ArrayList<Object>) daos.AbstractDAO.search(hql);
        
        for(Object o : arrProvisorio)
        {
            Producto producto = (Producto) o;
            arrRespuesta.add(producto);
        }
        
        return arrRespuesta;
    }
    public static Producto find(int id)
    {
        Producto productoRespuesta = null;
        
        productoRespuesta = (Producto)daos.AbstractDAO.find(Producto.class, id);
        
        return productoRespuesta;
    }
    public static boolean insertarProducto(Producto productoAInsertar)
    {
        boolean respuesta = false;
        
        respuesta = daos.AbstractDAO.insertar(productoAInsertar);
        
        return respuesta;
    }
}
