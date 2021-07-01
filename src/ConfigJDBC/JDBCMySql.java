package ConfigJDBC;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Araujo
 */
public class JDBCMySql extends GestorJDBC {
        @Override
        public void abrirConexion() throws Exception {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/redes?useSSL=false";
            conexion = DriverManager.getConnection(url, "root", "");
            System.out.println("--conectado a la base de datos--");
        } catch (SQLException e) {
            throw new Exception("Error en la conexion con la base de datos, consulte con el administrador." + e);
        }

    }
}
