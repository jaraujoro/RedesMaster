package controler;
import at.favre.lib.crypto.bcrypt.BCrypt;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Locale;
import javax.swing.JOptionPane;
import model.Usuario;
import view.FormLogin;
import view.FormQuestions;
import view.FormRegister;
/**
 *
 * @author Araujo
 */
public class controlerUser extends MouseAdapter implements ActionListener {

    FormLogin login;
    FormRegister register;
    FormQuestions question;
    controlerQuestion controlerQuiestion;
    private Usuario user;

    public controlerUser(FormLogin login, FormQuestions ques) {
        this.login = login;
        this.question = ques;
        register = new FormRegister();
        question = new FormQuestions();
        /*Events for buttoms*/
        FormLogin.btnlogin.addActionListener(this);
        FormRegister.btnregistro.addActionListener(this);
        /*Events for labels*/
        FormLogin.btnframe.addMouseListener(this);
        FormRegister.btnRegresar.addMouseListener(this);
        System.out.println("controller login");
    }

    public void message(String mensaje) {
        JOptionPane.showMessageDialog(null, mensaje);
    }

    public void Clear() {
        FormRegister.txtname.setText("");
        FormRegister.txtape.setText("");
        FormRegister.txtdni.setText("");
        FormRegister.txtuser.setText("");
        FormRegister.txtpass.setText("");
        FormLogin.txtpassword.setText("");
        FormLogin.txtusername.setText("");
        FormRegister.txtuser.setForeground(Color.black);
    }

    public String EncryptionPassword(String password) {//encripta  y devuelve contraseña 
        String bcryptHashString = BCrypt.withDefaults().hashToString(12, password.toCharArray());
        return bcryptHashString;
    }

    public boolean desencriptionPassword(String password, String hashingpassword) { //verifica la contraseña ingresada con la base de datos 
        BCrypt.Result result = BCrypt.verifyer().verify(password.toCharArray(), hashingpassword);
        return result.verified;
    }

    @Override
    //events buttoms
    public void actionPerformed(ActionEvent e) {
        if (FormLogin.btnlogin == e.getSource()) {
            String username = FormLogin.txtusername.getText();
            String password = FormLogin.txtpassword.getText();
            user = new Usuario();
            if (username.isEmpty() || password.isEmpty()) {
                message("Por favor llenar todos los campos");
            } else {
                try {
                    user = user.verificarUsuario(username);
                    if (user != null) {
                        if (desencriptionPassword(password, user.getPassword())) {
                           //message("Bienvenido: " + user.getNombre() + " " + user.getApellido());
                            login.setVisible(false);
                            question.setVisible(true);
                            controlerQuiestion = new controlerQuestion(question, login);
                            FormQuestions.labelUser.setText(user.getNombre() + " " + user.getApellido());
                        } else {
                            message(" verifique su contraseña");
                            FormLogin.txtpassword.requestFocus();
                        }
                    } else {
                        message("El username ingresado no existe");
                        FormLogin.txtusername.requestFocus();
                    }
                } catch (Exception excep) {
                    message("error" + excep);
                }
            }
        }
        if (FormRegister.btnregistro == e.getSource()) {
            System.out.println("register here");
            String nombre = FormRegister.txtname.getText();
            String apellido = FormRegister.txtape.getText();
            String dni = FormRegister.txtdni.getText();
            String username = FormRegister.txtuser.getText();
            String password = FormRegister.txtpass.getText();
            String hashPassword = EncryptionPassword(password);
            user = new Usuario(nombre, apellido, dni, username, hashPassword);
            if (nombre.equals("") || apellido.equals("") || dni.equals("") || username.equals("") || password.equals("")) {
                message("Llenar obligatoriamente todos los campos");
            } else {
                try {
                    int existUser = 0;
                    existUser = user.existeUsuario(username);
                    if (existUser > 0) {
                        message("Lo sentimos, el Username ya se encuentra en uso");
                        FormRegister.txtuser.setForeground(Color.red);
                        FormRegister.txtuser.requestFocus();
                    } else {
                        int registerUser = user.registrarUsuario();
                        if (registerUser > 0) {
                            message("registrado correctamente");
                            Clear();
                            register.setVisible(false);
                            login.setVisible(true);
                        }
                    }
                } catch (Exception ex) {
                    System.out.println("error " + ex);
                }
            }
        }
    }

    @Override
    //events label
    public void mouseClicked(MouseEvent e){
        //salto de pagina a frmRegister
        if(FormLogin.btnframe == e.getSource()){
            login.setVisible(false);
            register.setVisible(true);
        }
        if(FormRegister.btnRegresar == e.getSource()){
            Clear();
            login.setVisible(true);
            register.setVisible(false);
        }
    }
}
