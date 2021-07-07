package model;
import ConfigJDBC.GestorJDBC;
import ConfigJDBC.JDBCMySql;
import DataAccessObject.HistoryUserDAO;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

public class Historial {
    private String nombreUsuario;
    private String capitulo;
    private int respuesta_correcta;
    private int respuesta_incorrecta;
    private int nota;
    private Date fecha;
    private GestorJDBC gestorJDBC = new JDBCMySql();
    private HistoryUserDAO historial = new HistoryUserDAO(gestorJDBC);

    public Historial() {
    }

    public Historial(String capitulo, int respuesta_correcta, int respuesta_incorrecta, int nota, Date fecha) {
        this.capitulo = capitulo;
        this.respuesta_correcta = respuesta_correcta;
        this.respuesta_incorrecta = respuesta_incorrecta;
        this.nota = nota;
        this.fecha = fecha;
    }

    public Historial(String nombreUsuario, String capitulo, int respuesta_correcta, int respuesta_incorrecta, int nota, Date fecha) {
        this.nombreUsuario = nombreUsuario;
        this.capitulo = capitulo;
        this.respuesta_correcta = respuesta_correcta;
        this.respuesta_incorrecta = respuesta_incorrecta;
        this.nota = nota;
        this.fecha = fecha;
    }

    public Historial(String capitulo) {
        this.capitulo = capitulo;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getCapitulo() {
        return capitulo;
    }

    public void setCapitulo(String capitulo) {
        this.capitulo = capitulo;
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

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public GestorJDBC getGestorJDBC() {
        return gestorJDBC;
    }

    public void setGestorJDBC(GestorJDBC gestorJDBC) {
        this.gestorJDBC = gestorJDBC;
    }

    public HistoryUserDAO getHistorial() {
        return historial;
    }

    public void setHistorial(HistoryUserDAO historial) {
        this.historial = historial;
    }

    public int registrarHistorialUsuario() throws Exception {
        gestorJDBC.abrirConexion();
        try {
            gestorJDBC.iniciarTransaccion();
            int data = historial.registrarHistorial(this);
            gestorJDBC.terminarTransaccion();
            return data;
        } catch (SQLException e) {
            gestorJDBC.cancelarTransaccion();
            throw e;
        }
    }

    public List<Historial> listarHistorialUsuario(String nick) throws Exception {
        gestorJDBC.abrirConexion();
        List his = historial.listarHistorial(nick);
        gestorJDBC.cerrarConexion();
        return his;
    }
}
/*
    public Historial obtenerHistorial(String nick) throws Exception{
        gestorJDBC.abrirConexion();
        Historial his =historial.ObtenerHistorial(nick);
        gestorJDBC.cerrarConexion();
        return his;
    }*/