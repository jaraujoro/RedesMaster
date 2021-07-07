package main;
import controler.controlerUser;
import view.FormLogin;
import view.FormQuestions;
import view.FormRegister;
/**
 *
 * @author Spider
 */
public class ProyectoRedesMVC {
    public static FormLogin login;
    public static FormRegister register;
    public static controlerUser controlador;
    public static FormQuestions question;

    public static void main(String[] args) throws Exception {
        login = new FormLogin();
        register = new FormRegister();
        login.setVisible(true);
        controlador = new controlerUser(login, question);
    }
    
}
