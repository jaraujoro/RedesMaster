package DataAccessObject;

import ConfigJDBC.GestorJDBC;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Capitulo;
import model.Pregunta;
import model.Respuesta;

public class QuestionDAO {
    GestorJDBC gestorJDBC;
   private final int max=49;
   private int counter;
   private final int preg=1;
   private Capitulo Capitulo;
   private Pregunta pregunta;
   private Respuesta respuesta;
  
   public QuestionDAO(GestorJDBC gestorJDBC) {
   this.gestorJDBC = gestorJDBC;
   }
    public Respuesta Datos(String x, int num) throws SQLException{
       Respuesta respuesta=null;
       ResultSet resultado_cap;
       String sql="SELECT c.capitulo,c.idcapitulo, p.idpregunta,p.pregunta,r.idrespuesta,\n" +
           "r.respuesta1, r.respuesta2,r.respuesta3,r.respuesta4, r.Mensaje \n" +
           "FROM capitulo c INNER JOIN pregunta p on c.idcapitulo=p.idcapitulo \n" +
           "INNER JOIN respuesta r on p.idpregunta=r.idpregunta \n" +
           "WHERE c.idcapitulo='"+x+"' and p.Numero='"+num+"'";
        resultado_cap = gestorJDBC.ejecutarConsulta(sql);
        while(resultado_cap.next()){
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
        resultado_cap.close();
        return respuesta;
   }
}
