package model;
import ConfigJDBC.GestorJDBC;
import ConfigJDBC.JDBCMySql;
import DataAccessObject.UserDAO;
import java.sql.SQLException;
public class Usuario {
    private int id;
    private String nombre;
    private String apellido;
    private String dni;
    private String username;
    private String password;
    private GestorJDBC gestorJDBC = new JDBCMySql();
    private UserDAO userDAO = new UserDAO(gestorJDBC);

    public Usuario(String nombre, String apellido, String dni, String username, String password) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.username = username;
        this.password = password;
    }

    public Usuario() {
    }

    public Usuario(int id, String nombre, String apellido, String dni, String username, String password) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.username = username;
        this.password = password;
    }

    public Usuario(String username) {
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public GestorJDBC getGestorJDBC() {
        return gestorJDBC;
    }

    public void setGestorJDBC(GestorJDBC gestorJDBC) {
        this.gestorJDBC = gestorJDBC;
    }

    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public int registrarUsuario() throws Exception {
        gestorJDBC.abrirConexion();
        try {
            gestorJDBC.iniciarTransaccion();
            int data = userDAO.registrarUsuario(this);
            gestorJDBC.terminarTransaccion();
            return data;
        } catch (SQLException e) {
            gestorJDBC.cancelarTransaccion();
            throw e;
        }
    }

    public int existeUsuario(String username) throws Exception {
        gestorJDBC.abrirConexion();
        try {
            gestorJDBC.iniciarTransaccion();
            int data = userDAO.existeUsuario(username);
            gestorJDBC.terminarTransaccion();
            return data;
        } catch (SQLException ex) {
            gestorJDBC.cancelarTransaccion();
            throw ex;
        }
    }

    public Usuario verificarUsuario(String username) throws Exception {
        gestorJDBC.abrirConexion();
        Usuario usuario = userDAO.verificarUsuario(username);
        gestorJDBC.cerrarConexion();
        return usuario;
    }

}
