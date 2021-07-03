package DataAccessObject;

import ConfigJDBC.GestorJDBC;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import model.User;


public class UserDAO {
    GestorJDBC gestorJDBC;
    public UserDAO(GestorJDBC gestorJDBC) {
    this.gestorJDBC = gestorJDBC;
    }
    public int registerUserDAO(User user) throws SQLException{
        String sentenciaSQL = "insert into usuario (nombre,apellido,dni,nick,contraseña) "
        + "values(?,?,?,?,?)";
        PreparedStatement sentencia = gestorJDBC.prepararSentencia(sentenciaSQL);
        sentencia.setString(1,user.getNombre());
        sentencia.setString(2,user.getApellido());
        sentencia.setString(3,user.getDni());
        sentencia.setString(4,user.getUsername());
        sentencia.setString(5,user.getPassword());
        return sentencia.executeUpdate();
    }
    public User checkUser(String username,String password) throws SQLException{
        User usuario=null;
        String sql="SELECT * FROM  usuario where nick=? and contraseña=?";
        PreparedStatement sentencia = gestorJDBC.prepararSentencia(sql);
        sentencia.setString(1, username);
        sentencia.setString(2, password);
        ResultSet res = sentencia.executeQuery();
        if(res.next()){
            usuario = new User(
            res.getInt("idusuario"),
            res.getString("nombre"),        
            res.getString("apellido"),
            res.getString("dni"),
            res.getString("nick"),
            res.getString("contraseña"));
        } 
         return usuario ;
    }
    public int existUser(String username)throws SQLException{        
        int existe=0;  
        ResultSet rs;
        String sql = "SELECT nick FROM usuario WHERE nick ='"+username+"'";
        rs=gestorJDBC.ejecutarConsulta(sql); 
        if(rs.next())
        existe =1;
        return existe;  
    }
}
