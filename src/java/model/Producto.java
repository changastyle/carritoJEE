package model;
// Generated 11/08/2015 19:44:16 by Hibernate Tools 4.3.1



/**
 * Producto generated by hbm2java
 */
public class Producto  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private float precio;
     private String imagen;

    public Producto() {
    }

    public Producto(String nombre, float precio, String imagen) {
       this.nombre = nombre;
       this.precio = precio;
       this.imagen = imagen;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public float getPrecio() {
        return this.precio;
    }
    
    public void setPrecio(float precio) {
        this.precio = precio;
    }
    public String getImagen() {
        return this.imagen;
    }
    
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }




}


