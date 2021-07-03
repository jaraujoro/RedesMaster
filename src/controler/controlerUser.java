package controler;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JOptionPane;
import model.User;
import view.FormLogin;
import view.FormQuestions;
import view.FormRegister;

/**
 *
 * @author Araujo
 */
public class controlerUser  extends MouseAdapter implements ActionListener {
   FormLogin login;
   FormRegister register;
   FormQuestions question;
   controlerQuestion controlerQuiestion;
   private User user;
   public controlerUser(FormLogin login,FormQuestions ques){
       this.login=login;
       this.question=ques;
       register  = new FormRegister();
       question = new FormQuestions();
        /*Events for buttoms*/
        FormLogin.btnlogin.addActionListener(this);
        FormRegister.btnregistro.addActionListener(this);
        /*Events for labels*/
        FormLogin.btnframe.addMouseListener(this);
        FormRegister.btnRegresar.addMouseListener(this);
        System.out.println("controller login");
   }
    public void message(String mensaje){
        JOptionPane.showMessageDialog(null,mensaje);
    }
    public void Clear(){
        FormRegister.txtname.setText("");
        FormRegister.txtape.setText("");
        FormRegister.txtdni.setText("");
        FormRegister.txtuser.setText("");
        FormRegister.txtpass.setText("");
        FormLogin.txtpassword.setText("");
        FormLogin.txtusername.setText("");
        FormRegister.txtuser.setForeground(Color.black);
    }
    @Override
    //events buttoms
    public void actionPerformed(ActionEvent e) {
        if(FormLogin.btnlogin == e.getSource()){
           String username = FormLogin.txtusername.getText();
           String password = FormLogin.txtpassword.getText();
           user = new User();
            try { 
                user = user.checkUser(username, password);
                if(user !=null){
                    message("Bienvenido: "+ user.getNombre()+" "+user.getApellido() );
                    login.setVisible(false);
                    question.setVisible(true);
                    controlerQuiestion = new controlerQuestion(question,login);
                }else{
                    message("verifique su usuario o contraseña");
                }
            } catch (Exception excep) {
                message("error"+excep); 
            }
        }
         if(FormRegister.btnregistro == e.getSource()){ 
            System.out.println("register here");
            String nombre = FormRegister.txtname.getText();
            String apellido = FormRegister.txtape.getText();
            String dni = FormRegister.txtdni.getText();
            String username = FormRegister.txtuser.getText();
            String password = FormRegister.txtpass.getText();
            user = new User(nombre, apellido, dni, username, password);
            if (nombre.equals("") || apellido.equals("") || dni.equals("") || username.equals("") || password.equals("")) {
                message("Llenar obligatoriamente todos los campos");
            } else {
                try {
                    int existUser = 0;
                    existUser = user.ExistUser(username);
                    if (existUser > 0) {
                        message("Lo sentimos, el Username ya se encuentra el uso");
                        FormRegister.txtuser.setForeground(Color.red);
                        FormRegister.txtuser.requestFocus();
                    } else {
                        int registerUser = user.registerUser();
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
    public void mouseClicked(MouseEvent e) {
        //salto de pagina a frmRegister
        if (FormLogin.btnframe == e.getSource()) {
           login.setVisible(false);
           register.setVisible(true); 
        }
        if(FormRegister.btnRegresar==e.getSource()){
            Clear();
            login.setVisible(true);
            register.setVisible(false);
        }
    }
}