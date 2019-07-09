
package alimentos;

import usuarios.*;
import java.io.FileInputStream;
import java.util.Date;

/**
 *
 * @author JIMMY
 */
public class AlimentosCod {
    
    public static String LISTAR = "SELECT * FROM alimentos ORDER BY nombre_al";
    
    public static String REGISTRAR = "INSERT INTO alimentos(codigo_al, tipo_al, nombre_al, precio_al) "
            + "VALUES(?,?,?,?)";
    
    public static String ACTUALIZAR = "UPDATE alimentos SET "
                + "tipo_al=?, "
                + "nombre_al=?, "
                + "precio_al=? WHERE codigo_al=?";
    
    public static String ELIMINAR = "DELETE FROM alimentos WHERE codigo_al = ?";
    
    public static String ELIMINAR_TODO = "DELETE FROM alimentos";
    
    private String primaryKey;
    private String tipoal;
    private String nombre;
    private String precio;

    public AlimentosCod(){
        
    }

    public String getPrimaryKey() {
        return primaryKey;
    }

    public void setPrimaryKey(String primaryKey) {
        this.primaryKey = primaryKey;
    }

    public String getTipoal() {
        return tipoal;
    }

    public void setTipoal(String tipoal) {
        this.tipoal = tipoal;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    
}
