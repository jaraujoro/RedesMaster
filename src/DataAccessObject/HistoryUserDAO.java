
package DataAccessObject;

import ConfigJDBC.GestorJDBC;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Historial;

public class HistoryUserDAO {
    GestorJDBC gestorJDBC;
    public HistoryUserDAO(GestorJDBC gestorJDBC) {
    this.gestorJDBC = gestorJDBC;
    }
    public int registrarHistorial(Historial historial) throws SQLException{
        String sentenciaSQL = "insert into historial(usuario,capitulo,respuesta_correcta,respuesta_incorrecta,nota,fecha)"
        + "values(?,?,?,?,?,?)";
        PreparedStatement sentencia = gestorJDBC.prepararSentencia(sentenciaSQL);
        sentencia.setString(1,historial.getNombreUsuario());
        sentencia.setString(2,historial.getCapitulo());
        sentencia.setInt(3,historial.getRespuesta_correcta());
        sentencia.setInt(4,historial.getRespuesta_incorrecta());
        sentencia.setInt(5,historial.getNota());
        sentencia.setDate(6,historial.getFecha());
        return sentencia.executeUpdate();
    }
    
    
    
    
    
}
