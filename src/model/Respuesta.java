
package model;

import ConfigJDBC.GestorJDBC;
import ConfigJDBC.JDBCMySql;
import DataAccessObject.QuestionDAO;

public class Respuesta {
    private int idRespuesta;
    private String respuesta1,respuesta2,respuesta3,respuesta4;
    private String Mensaje;
    private GestorJDBC gestorJDBC= new JDBCMySql();
    private QuestionDAO questionDAO= new QuestionDAO(gestorJDBC);
    private Pregunta pregunta;
    private int respuesta_correcta;
    private int respuesta_incorrecta;

    public Respuesta(int respuesta_correcta, int respuesta_incorrecta) {
        this.respuesta_correcta = respuesta_correcta;
        this.respuesta_incorrecta = respuesta_incorrecta;
    }

    public int getRespuesta_correcta() {
        return respuesta_correcta;
    }

    public void setRespuesta_correcta(int respuesta_correcta) {
        this.respuesta_correcta = respuesta_correcta;
    }

    public int getRespuesta_incorrecta() {
        return respuesta_incorrecta;
    }

    public void setRespuesta_incorrecta(int respuesta_incorrecta) {
        this.respuesta_incorrecta = respuesta_incorrecta;
    }
    
    public Respuesta(Pregunta pregunta) {
        this.pregunta = pregunta;
    }
    public Respuesta(int idRespuesta, String respuesta1, String respuesta2, String respuesta3, String respuesta4, String Mensaje, Pregunta pregunta) {
        this.idRespuesta = idRespuesta;
        this.respuesta1 = respuesta1;
        this.respuesta2 = respuesta2;
        this.respuesta3 = respuesta3;
        this.respuesta4 = respuesta4;
        this.Mensaje = Mensaje;
        this.pregunta = pregunta;
    }
    public Respuesta(int idRespuesta, String respuesta1, String respuesta2, String respuesta3, String respuesta4, String Mensaje) {
        this.idRespuesta = idRespuesta;
        this.respuesta1 = respuesta1;
        this.respuesta2 = respuesta2;
        this.respuesta3 = respuesta3;
        this.respuesta4 = respuesta4;
        this.Mensaje = Mensaje;
    }

    public Pregunta getPregunta() {
        return pregunta;
    }

    public void setPregunta(Pregunta pregunta) {
        this.pregunta = pregunta;
    }

    
    public int getIdRespuesta() {
        return idRespuesta;
    }

    public Respuesta() {
    }

    public void setIdRespuesta(int idRespuesta) {
        this.idRespuesta = idRespuesta;
    }

  
    public String getRespuesta1() {
        return respuesta1;
    }

    public GestorJDBC getGestorJDBC() {
        return gestorJDBC;
    }

    public void setGestorJDBC(GestorJDBC gestorJDBC) {
        this.gestorJDBC = gestorJDBC;
    }

    public QuestionDAO getQuestionDAO() {
        return questionDAO;
    }

    public void setQuestionDAO(QuestionDAO questionDAO) {
        this.questionDAO = questionDAO;
    }

    public void setRespuesta1(String respuesta1) {
        this.respuesta1 = respuesta1;
    }

    public String getRespuesta2() {
        return respuesta2;
    }

    public void setRespuesta2(String respuesta2) {
        this.respuesta2 = respuesta2;
    }

    public String getRespuesta3() {
        return respuesta3;
    }

    public void setRespuesta3(String respuesta3) {
        this.respuesta3 = respuesta3;
    }

    public String getRespuesta4() {
        return respuesta4;
    }

    public void setRespuesta4(String respuesta4) {
        this.respuesta4 = respuesta4;
    }

    public String getMensaje() {
        return Mensaje;
    }

    public void setMensaje(String Mensaje) {
        this.Mensaje = Mensaje;
    }
    public Respuesta Data (String cap, int num) throws Exception{
        gestorJDBC.abrirConexion();
        Respuesta res = questionDAO.Datos(cap, num);
        gestorJDBC.cerrarConexion();
        return res;
    }
   
    
}
