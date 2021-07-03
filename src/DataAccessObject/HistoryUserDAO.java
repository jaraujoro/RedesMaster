
package DataAccessObject;

import ConfigJDBC.GestorJDBC;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Historial;

public class HistoryUserDAO {
    GestorJDBC gestorJDBC;
    public HistoryUserDAO(GestorJDBC gestorJDBC) {
    this.gestorJDBC = gestorJDBC;
    }
    public List<Historial> mostrarHistorial(String nick)  throws SQLException{
        ArrayList<Historial> listarHistorial = new ArrayList<>();
        ResultSet resultadoHistorial;
        String sql="select * FROM historial where usuario='"+nick+"' ORDER by fecha  DESC";
        resultadoHistorial=gestorJDBC.ejecutarConsulta(sql);
        while(resultadoHistorial.next()){
            Historial historial = new Historial();
            historial.setCapitulo(resultadoHistorial.getString("capitulo"));
            historial.setRespuesta_correcta(resultadoHistorial.getInt("respuesta_correcta"));
            historial.setRespuesta_incorrecta(resultadoHistorial.getInt("respuesta_incorrecta"));
            historial.setNota(resultadoHistorial.getInt("nota"));
            historial.setFecha(resultadoHistorial.getDate("fecha"));
            listarHistorial.add(historial);
        }
        resultadoHistorial.close();
        return listarHistorial;
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
    /*
    public Historial ObtenerHistorial(String nick)throws SQLException{
        Historial historial=null;
        String sql="select * FROM historial where usuario=?";
        PreparedStatement sentencia=gestorJDBC.prepararSentencia(sql);
        sentencia.setString(1, nick);
        ResultSet resultado_historial=sentencia.executeQuery();
        while(resultado_historial.next()){
            historial = new Historial(
            resultado_historial.getString("capitulo"),
            resultado_historial.getInt("respuesta_correcta"),
            resultado_historial.getInt("respuesta_incorrecta"),
            resultado_historial.getInt("nota"),
            resultado_historial.getDate("fecha"));    
        }
        return historial;
    }
    
    public Historial ObtenerHistorial(String nick)throws SQLException{
        Historial historial=null;
        String sql="select * FROM historial where usuario='"+nick+"'";
        ResultSet resultado_historial;
        resultado_historial =gestorJDBC.ejecutarConsulta(sql);
        while(resultado_historial.next()){
            historial = new Historial(
            resultado_historial.getString("capitulo"),
            resultado_historial.getInt("respuesta_correcta"),
            resultado_historial.getInt("respuesta_incorrecta"),
            resultado_historial.getInt("nota"),
            resultado_historial.getDate("fecha"));    
        }
        return historial;
    }
    */
}
