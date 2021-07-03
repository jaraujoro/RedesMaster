/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import ConfigJDBC.GestorJDBC;
import ConfigJDBC.JDBCMySql;
import DataAccessObject.UserDAO;
import java.sql.SQLException;

/**
 *
 * @author Spider
 */
public class User {
    private int id;
    private String nombre;
    private String apellido;
    private String dni;
    private String username;
    private String password;
    private GestorJDBC gestorJDBC= new JDBCMySql();
    private UserDAO userDAO= new UserDAO(gestorJDBC);
    public User(String nombre, String apellido, String dni, String username, String password) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.username = username;
        this.password = password;
    }
    public User() {
    }
    public User(int id, String nombre, String apellido, String dni, String username, String password) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.username = username;
        this.password = password;
    }
    public User(String username) {
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
    /*************Method's*******************/
     public int registerUser() throws Exception{
          gestorJDBC.abrirConexion();
        try{
          gestorJDBC.iniciarTransaccion();
          int data = userDAO.registerUserDAO(this);
          gestorJDBC.terminarTransaccion();
          return data;
        }catch(SQLException e){
          gestorJDBC.cancelarTransaccion();
        throw e;
        }
    }
    public int ExistUser(String username) throws Exception{
        gestorJDBC.abrirConexion();
        try {
            gestorJDBC.iniciarTransaccion();
            int data = userDAO.existUser(username);
            gestorJDBC.terminarTransaccion();
            return data;
        } catch (SQLException ex) {
          gestorJDBC.cancelarTransaccion();
          throw ex;
        }
    }
    public User checkUser(String username,String password)throws Exception{
        gestorJDBC.abrirConexion();
        User usuario = userDAO.checkUser(username,password);
        gestorJDBC.cerrarConexion();
        return usuario;
    } 
     
}
