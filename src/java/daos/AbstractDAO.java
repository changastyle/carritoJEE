package daos;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class AbstractDAO
{
    private static SessionFactory sessionFactory;
    private static Session session;
    private static Transaction transaction;
    private static Query query;
    
    public static void iniciarSesion()
    {
        try
        {
            sessionFactory = new hibernateUtil.NewHibernateUtil().getSessionFactory();
            session = sessionFactory.openSession();
        } catch (Exception e)
        {
            e.printStackTrace();
            System.out.println("ERROR: iniciarSesion -> AbstractDAO");
        } 
    }
    public static void cerrarSession()
    {
        try
        {
            session.close();
        } catch (Exception e)
        {
            e.printStackTrace();
            System.out.println("ERROR: cerrarSession -> AbstractDAO");
        } 
    }
    public static List<Object> findAll(Class clase)
    {
        List<Object> arrRespuesta = null;
        
        iniciarSesion();
        
        arrRespuesta = session.createQuery("from " + clase.getSimpleName()).list();
        
        cerrarSession();
        
        return arrRespuesta;
    }
    public static List<Object> search(String hql)
    {
        List<Object> arrRespuesta = null;
        
        iniciarSesion();
        
        arrRespuesta = session.createQuery(hql).list();
        
        cerrarSession();
        
        return arrRespuesta;
    }
    public static Object find(Class claseDelObjetoEnCuestion , int id)
    {
        Object objeto = null;
        
        iniciarSesion();
        objeto = session.get(claseDelObjetoEnCuestion, id);
        cerrarSession();
        
        return objeto;
    }
    public static boolean insertar(Object o )
    {
        boolean inserto = false;
        try
        {
            iniciarSesion();
            
            transaction = session.beginTransaction();
            session.save(o);
            transaction.commit();
            
            cerrarSession();
            
            inserto = true;
        }
        catch(Exception e)
        {
            transaction.rollback();
            e.printStackTrace();
            System.out.println("ERROR: AbstractDAO -> insertar: " + o);
        }
        return inserto;
    }
}
