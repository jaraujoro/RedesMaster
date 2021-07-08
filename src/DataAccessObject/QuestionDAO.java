package DataAccessObject;
import ConfigJDBC.GestorJDBC;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Capitulo;
import model.Pregunta;
import model.Respuesta;

public class QuestionDAO {
    GestorJDBC gestorJDBC;
    public QuestionDAO(GestorJDBC gestorJDBC) {
        this.gestorJDBC = gestorJDBC;
    }
    public Respuesta obtenerDatos(String capitulo, int numero) throws SQLException {
        Respuesta respuesta = null;
        String sql ="SELECT c.capitulo,c.idcapitulo, p.idpregunta,p.pregunta,r.idrespuesta,\n"
                + "r.respuesta1, r.respuesta2,r.respuesta3,r.respuesta4, r.Mensaje \n"
                + "FROM capitulo c INNER JOIN pregunta p on c.idcapitulo=p.idcapitulo \n"
                + "INNER JOIN respuesta r on p.idpregunta=r.idpregunta \n"
                + "WHERE c.idcapitulo= ? and p.Numero= ?";
        PreparedStatement sentencia = gestorJDBC.prepararSentencia(sql);
        sentencia.setString(1,capitulo);
        sentencia.setInt(2, numero);
        try (ResultSet resultado_cap = sentencia.executeQuery()) {
            while (resultado_cap.next()) {
                //capitulo;
                Capitulo cap = new Capitulo();
                cap.setCapitulo(resultado_cap.getString("capitulo"));
                //pregunta;
                Pregunta pre = new Pregunta();
                pre.setPregunta(resultado_cap.getString("pregunta"));
                //respuesta;
                respuesta = new Respuesta();
                respuesta.setRespuesta1(resultado_cap.getString("respuesta1"));
                respuesta.setRespuesta2(resultado_cap.getString("respuesta2"));
                respuesta.setRespuesta3(resultado_cap.getString("respuesta3"));
                respuesta.setRespuesta4(resultado_cap.getString("respuesta4"));
                respuesta.setMensaje(resultado_cap.getString("Mensaje"));
                //Conexiones;
                pre.setCapitulo(cap);
                respuesta.setPregunta(pre);
            }
        }
        return respuesta;
    }
}
