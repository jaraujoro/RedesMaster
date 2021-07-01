package controler;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Date;
import java.time.LocalDate;

import javax.swing.JOptionPane;
import model.Capitulo;
import model.Historial;
import model.Pregunta;
import model.Respuesta;
import model.User;
import view.FormLogin;
import view.FormQuestions;

public class controlerQuestion  extends MouseAdapter implements ActionListener {
 FormQuestions question;
 FormLogin login;
 User user;
 Capitulo cap;
 Respuesta res;
 Pregunta pre;
 private Historial historial;
 String capitulo;
 int x = 0;
 int a = 220;
 int pregunta=1;
 int counter;
 int max=49;
 int arreglo[]=new int[max];
 int i=0;
 int pos;
 int numeroCapitulo;
 int buena=0;
 int mala=0;
 int notaEstudiante=0;
 int insertarHistorial=0;
 Date fecha;
 public controlerQuestion(FormQuestions question,FormLogin login) throws Exception{
     this.question=question;
     this.login=login;
     user = new User();
     FormQuestions.btnNext.addActionListener(this);
     FormQuestions.btnIndice.addActionListener(this);
     FormQuestions.btnCap1.addActionListener(this);
     FormQuestions.btnCap2.addActionListener(this);
     FormQuestions.btnCap3.addActionListener(this);
     FormQuestions.btnCap4.addActionListener(this);
     FormQuestions.btnCap5.addActionListener(this);
     FormQuestions.btnCap6.addActionListener(this);
     FormQuestions.btnCap7.addActionListener(this);
     FormQuestions.btnCap8.addActionListener(this);
     FormQuestions.btnCap9.addActionListener(this);
     FormQuestions.btnCap10.addActionListener(this);
     FormQuestions.btnNext.addActionListener(this);
     FormQuestions.btnRegresar.addActionListener(this);
     FormQuestions.btnAceptarPizarra.addActionListener(this);
     FormQuestions.respuesta1.addMouseListener(this);
     FormQuestions.respuesta2.addMouseListener(this);
     FormQuestions.respuesta3.addMouseListener(this);
     FormQuestions.respuesta4.addMouseListener(this);
     FormQuestions.btnNextPregunta.addActionListener(this);
     FormQuestions.btnAleatorio.addActionListener(this);
     question.PanelMenu.setVisible(false);
     question.PanelPreguntas.setVisible(false);
     question.PanelBotonesIndice.setOpaque(false);
     question.PanelRecuerda.setVisible(false);
     question.imagen2.setVisible(false);
     question.imagen1.setVisible(false);
     question.Correcta.setVisible(false);
     question.Incorrecta.setVisible(false);
     question.respuesta1.setOpaque(false);
     question.respuesta2.setOpaque(false);
     question.respuesta3.setOpaque(false);
     question.respuesta4.setOpaque(false);
     question.sumNota.setVisible(false);
     question.labelUser.setText("Usuario: "+FormLogin.txtusername.getText());
 }
 /*Metodos para la clase*/
 public void message(String mensaje){
     JOptionPane.showMessageDialog(null,mensaje);
 }
 public void correcta(){
     buena++;
     question.Correcta.setText("ACIERTOS: "+buena+"");
     FormQuestions.txtRespuesta.setText("<html><font color='green'size=5>RESPUESTA CORRECTA");
     question.PanelOpciones.setVisible(false);
     notaEstudiante();
 }
 public void incorrecta(){
     mala++;
     question.Incorrecta.setText("ACIERTOS: "+mala+"");
     FormQuestions.txtRespuesta.setText("<html><font color='red'size=5>RESPUESTA INCORRECTA");
     question.PanelOpciones.setVisible(false);
     notaEstudiante();
 }
 public void imagenPregunta(){
     if(capitulo=="CAP4"&(counter==15|counter==16)){question.imagen1.setVisible(true);}else{question.imagen1.setVisible(false);}
     if(capitulo=="CAP4"&counter==20){question.imagen2.setVisible(true);}else{question.imagen2.setVisible(false);}
 }
 public void notaEstudiante(){
   if(insertarHistorial>0){
    if(pregunta==10){
        question.sumNota.setVisible(true);
        notaEstudiante=buena*2;
        if(notaEstudiante<10){
            question.sumNota.setText("<html><font color='red'size=5>Su nota es: "+notaEstudiante);
        }else if(notaEstudiante>10){
            question.sumNota.setText("<html><font color='green'size=5>Su nota es: "+notaEstudiante);   
        }
    }
   } 
 }
 public void  regenerarArray(){
  if (arreglo[i] == 0) { 
            arreglo[i] = (int) (Math.random() * max + 1);
            for (int i = 1; i < max; i++) {
                arreglo[i] = (int) (Math.random() * max + 1); 
                for (int j = 0; j < i; j++) {
                    if (arreglo[i] == arreglo[j]) {
                        i--;
                    }
                }
            } 
        }
 }
 public void capituloAleatorio(){
     pregunta=1;
     insertarHistorial=1;
     int capAlt = ((int) (Math.random()*(11-1))+1);
     numeroCapitulo=capAlt;
     if(numeroCapitulo==1){max=19;}
       if(numeroCapitulo==2){max=18;}
       if(numeroCapitulo==3){max=24;}
       if(numeroCapitulo==4){max=20;}
       if(numeroCapitulo==5){max=36;}
       if(numeroCapitulo==6){max=49;}
       if(numeroCapitulo==7){max=49;}
       if(numeroCapitulo==8){max=34;}
       if(numeroCapitulo==9){max=24;}
       if(numeroCapitulo==10){max=22;}
       pos = 0;       
        for (int n = 0; n < max; n++) {
            arreglo[n] = 0;
        }       
       capitulo="CAP"+numeroCapitulo;
 }
 public void mostrarDatos(String capi){
           regenerarArray();
           pos++;
           counter=(arreglo[pos]);
           cap = new Capitulo();
           res = new Respuesta();
           pre = new Pregunta();
           try {
           String datecapi=capi;    
           res=  res.Data(datecapi,counter);
           if(res!=null){
                cap=res.getPregunta().getCapitulo();
                FormQuestions.numeroPregunta.setText("Pregunta: "+pregunta);
                FormQuestions.tituloCap.setText(res.getPregunta().getCapitulo().getCapitulo());
                FormQuestions.Pregunta.setText(res.getPregunta().getPregunta());
                FormQuestions.respuesta1.setText(res.getRespuesta1());
                FormQuestions.respuesta2.setText(res.getRespuesta2());
                FormQuestions.respuesta3.setText(res.getRespuesta3());
                FormQuestions.respuesta4.setText(res.getRespuesta4());
                FormQuestions.Recuerda.setText("<html><p ALIGN=justify>"+"<b><u>Recuerda que</u>: </b>"+res.getMensaje()+"</p><html>");
                question.Correcta.setText("ACIERTOS: "+buena+"");
                question.Incorrecta.setText("DESACIERTOS: "+mala+"");
                imagenPregunta();
                //s
            }
            }catch(Exception problem){
            message("Problem"+problem);   
            }
 }
 
    @Override
    public void actionPerformed(ActionEvent e) {
        //event's buttom's
        if(FormQuestions.btnNextPregunta==e.getSource()){
         //question.PanelOpciones.setVisible(false);
           question.PanelRecuerda.setVisible(true);
           if("CAP1".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==19){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //CAPITULO 2
        if("CAP2".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //CAPITULO 3
        if("CAP3".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==19){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==20){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==21){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==22){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==23){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==24){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //CAPITULO 4
        if("CAP4".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==19){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==20){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //CAPITULO 5
        if("CAP5".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==19){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==20){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==21){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==22){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==23){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==24){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==25){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==26){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==27){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==28){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==29){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==30){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==31){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==32){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==33){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==34){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==35){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==36){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //CAPITULO 6
        if("CAP6".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==19){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==20){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==21){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==22){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==23){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==24){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==25){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==26){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==27){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==28){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==29){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==30){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==31){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==32){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==33){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==34){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==35){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==36){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==37){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==38){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==39){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==40){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==41){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==42){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==43){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==44){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==45){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==46){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==47){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==48){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==49){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //CAPITULO 7
        if("CAP7".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==19){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==20){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==21){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==22){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==23){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==24){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==25){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==26){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==27){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==28){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==29){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==30){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==31){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==32){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==33){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==34){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==35){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==36){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==37){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==38){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==39){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==40){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==41){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==42){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==43){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==44){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==45){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==46){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==47){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==48){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==49){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //CAPITULO 8
        if("CAP8".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==19){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==20){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==21){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==22){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==23){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==24){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==25){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==26){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==27){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==28){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==29){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==30){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==31){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==32){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==33){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==34){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //CAPITULO 9
        if("CAP9".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==19){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==20){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==21){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==22){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==23){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==24){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //CAPITULO 10
        if("CAP10".equals(capitulo)){
            if(counter==1){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==2){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==3){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==4){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==5){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==6){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==7){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==8){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==9){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==10){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==11){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==12){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==13){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==14){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==15){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==16){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==17){if(FormQuestions.respuesta2.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==18){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==19){if(FormQuestions.respuesta4.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==20){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==21){if(FormQuestions.respuesta3.isSelected()==false){incorrecta();}else{correcta();}}
            if(counter==22){if(FormQuestions.respuesta1.isSelected()==false){incorrecta();}else{correcta();}}
        }
        //FormQuestions.btnNextPregunta.setEnabled(false);
        }
        if(FormQuestions.btnAceptarPizarra==e.getSource()){
            if(pregunta==10){
                //insertar historial usuario;
                if(insertarHistorial>0){
                   String usuario=FormLogin.txtusername.getText();
                   String capitule = capitulo;
                   int rescorrect = buena;
                   int resincorrect=mala;
                   int nota= buena*2;
                   fecha = fecha = Date.valueOf(LocalDate.now()); 
                    try {
                        historial = new Historial(usuario, capitule, resincorrect, resincorrect, nota, fecha);
                        int x = historial.sendNote();
                        if(x>0){
                            insertarHistorial=0;
                        }else{
                            message("error");
                        }
                    } catch (Exception exception) {
                        message("Error"+exception);
                    }
                }
                //close intsert
                if(FormQuestions.respuesta1.isSelected() || FormQuestions.respuesta2.isSelected() || FormQuestions.respuesta3.isSelected() || FormQuestions.respuesta4.isSelected()){
                question.PanelPreguntas.setVisible(false);
                question.PanelBotonesIndice.setVisible(true);
                pregunta=0;
                buena=0;
                mala=0;
                }
            }
            pregunta=pregunta+1;
            mostrarDatos(capitulo);
            question.RadioButtomGroup.clearSelection();
            question.btnNext.setEnabled(false);
            question.PanelRecuerda.setVisible(false);
            FormQuestions.PanelOpciones.setVisible(true);
        }
        if(FormQuestions.btnCap1==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=19;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP1";
           mostrarDatos(capitulo);
        }
        if(FormQuestions.btnCap2==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=18;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP2";
           mostrarDatos(capitulo);
        }
        if(FormQuestions.btnCap3==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=24;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP3";
           mostrarDatos(capitulo);
        }
        if(FormQuestions.btnCap4==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=20;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP4";
           mostrarDatos(capitulo);
        }
        if(FormQuestions.btnCap5==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=36;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP5";
           mostrarDatos(capitulo);
        }
        if(FormQuestions.btnCap6==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=49;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP6";
           mostrarDatos(capitulo);
        }
        if(FormQuestions.btnCap7==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=49;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP7";
           mostrarDatos(capitulo);
        }
        if(FormQuestions.btnCap8==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=34;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP8";
           mostrarDatos(capitulo);
        }
        if(FormQuestions.btnCap9==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=24;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP9";
           mostrarDatos(capitulo);
        }
        if(FormQuestions.btnCap10==e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           pregunta=1;
           max=22;
           pos=0;
           for(int n = 0; n<max; n++){
               arreglo[n]=0;
           }
           capitulo="CAP10";
           mostrarDatos(capitulo);
        }
        //botón siguiente y regresar del panel indice
        if(FormQuestions.btnNext==e.getSource()){
           question.btnCap1.setVisible(false);
           question.btnCap2.setVisible(false);
           question.btnCap3.setVisible(false);
           question.btnCap4.setVisible(false);
           question.btnCap5.setVisible(false);
           question.btnCap6.setVisible(false);
           question.btnCap7.setVisible(false);
           question.btnNext.setVisible(false);
        }
        if(FormQuestions.btnRegresar==e.getSource()){
           question.btnCap1.setVisible(true);
           question.btnCap2.setVisible(true);
           question.btnCap3.setVisible(true);
           question.btnCap4.setVisible(true);
           question.btnCap5.setVisible(true);
           question.btnCap6.setVisible(true);
           question.btnCap7.setVisible(true);
           question.btnNext.setVisible(true);   
        }
        //Panel Deslice;
        if(FormQuestions.btnAleatorio == e.getSource()){
           question.PanelBotonesIndice.setVisible(false);
           question.PanelPreguntas.setVisible(true);
           question.Correcta.setVisible(true);
           question.Incorrecta.setVisible(true);
           capituloAleatorio();
           mostrarDatos(capitulo);
           question.PanelMenu.setVisible(false);
           x=0;
           a=220;
        }
        if(FormQuestions.btnIndice == e.getSource()){
          question.PanelMenu.setVisible(true);  
          if (x == 220) {  
            question.PanelMenu.setSize(220, 570);
            Thread th = new Thread() {
                @Override
                public void run() {
                    try {
                        for (int i = 220; i >= 0; i--) {
                            Thread.sleep(2);
                        question.PanelMenu.setSize(i, 570);
                            a++;
                        }
                    } catch (Exception e) {
                        JOptionPane.showMessageDialog(null, e);
                    }
                }
            };
            th.start();
            x = 0;
        }else if(x == 0){
            question.PanelMenu.setSize(x, 570);
            Thread th = new Thread() {
                @Override
                public void run() {
                    try {
                        for (int i = 0; i <= x; i++) {
                            Thread.sleep(2);
                            question.PanelMenu.setSize(i, 570);
                        }
                    } catch (Exception e) {
                        JOptionPane.showMessageDialog(null, e);
                    }
                }
            };
            th.start();
            x = 220;
                        }
        }
        
    }
    @Override
    //events label/radiobuttoms
    public void mouseClicked(MouseEvent e) {
        //Activacion del boton nextPregunta;
        if (FormQuestions.respuesta1 == e.getSource() || FormQuestions.respuesta2 == e.getSource() || FormQuestions.respuesta3 == e.getSource() || FormQuestions.respuesta4 == e.getSource()){
            FormQuestions.btnNextPregunta.setEnabled(true);
        } 
    }
}
