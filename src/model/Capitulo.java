package model;
import ConfigJDBC.GestorJDBC;
import ConfigJDBC.JDBCMySql;
import DataAccessObject.QuestionDAO;

public class Capitulo {
    private int idCapitulo;
    private String capitulo;
    private GestorJDBC gestorJDBC = new JDBCMySql();
    private QuestionDAO questionDAO = new QuestionDAO(gestorJDBC);
    
    public Capitulo(String capitulo) {
        this.capitulo = capitulo;
    }

    public int getIdCapitulo() {
        return idCapitulo;
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

    public void setIdCapitulo(int idCapitulo) {
        this.idCapitulo = idCapitulo;
    }

    public String getCapitulo() {
        return capitulo;
    }

    public void setCapitulo(String capitulo) {
        this.capitulo = capitulo;
    }

    public Capitulo(int idCapitulo, String capitulo) {
        this.idCapitulo = idCapitulo;
        this.capitulo = capitulo;
    }

    public Capitulo() {
    }

}
