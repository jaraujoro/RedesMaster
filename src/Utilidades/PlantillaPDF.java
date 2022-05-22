package Utilidades;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import model.Historial;
import view.FormQuestions;

/*
 *
 * @Jhon Alexander PC
 */
public class PlantillaPDF {
    private Date fecha;
    private String usuario;
    Document documento;
    FileOutputStream archivo;
    Paragraph titulo;
    FormQuestions form;
    List<Historial> ListaHistorialPersonas;

    public PlantillaPDF(String usuario, List<Historial> ListaHistorialPersonas) throws Exception {
        this.fecha = fecha = Date.valueOf(LocalDate.now());;
        this.usuario = usuario;
        documento = new Document();
        titulo = new Paragraph("Redes y Comunicaciones");
        this.ListaHistorialPersonas = ListaHistorialPersonas;
    }

    public PlantillaPDF() {
    }

    public void crearPDF(){
        try {
                archivo = new FileOutputStream(usuario+".pdf");
                PdfWriter.getInstance(documento, archivo);
                documento.open();
                titulo.setAlignment(1);
                /************Imagen**************************/
                Image img = null;
                    try {
                           img = Image.getInstance("D:\\Proyectos-Java\\RedesMaster\\src\\images\\aprendiendo.png");//carga de imagen
                           //img.scaleAbsolute(150, 100); //dimensión de la imagen
                           img.setAbsolutePosition(415, 750); //coloca la imagen un una posición 
                    } catch (Exception e) {
                    }
                documento.add(img);//agrega la imagen al pdf  
                /*************TITULO DEL PDF***************/
                documento.add(titulo);
                documento.add(new Paragraph("Nombre: "+usuario));
                
                documento.add(Chunk.NEWLINE);
                
                Paragraph texto = new Paragraph("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam "
                        + "cum eveniet quis rerum iusto velit error facilis modi est, mollitia provident ipsam aliquid, excepturi"
                        + " illum, laudantium quam saepe. Tempore, perferendis.");
                texto.setAlignment(Element.ALIGN_JUSTIFIED);
                documento.add(texto);
                
                documento.add(Chunk.NEWLINE);
                /********************TABLA PARA EL PDF********************/
                PdfPTable tabla = new  PdfPTable(5);
                tabla.setWidthPercentage(100);
                PdfPCell cap =  new PdfPCell(new Phrase("Capitulo"));
                cap.setBackgroundColor(BaseColor.ORANGE);
                PdfPCell acier =  new PdfPCell(new Phrase("Nº Aciertos"));
                acier.setBackgroundColor(BaseColor.ORANGE);
                PdfPCell desaci =  new PdfPCell(new Phrase("Nº Desaciertos"));
                desaci.setBackgroundColor(BaseColor.ORANGE);
                PdfPCell not =  new PdfPCell(new Phrase("Nota"));
                not.setBackgroundColor(BaseColor.ORANGE);
                PdfPCell dia =  new PdfPCell(new Phrase("Fecha"));
                dia.setBackgroundColor(BaseColor.ORANGE);
                tabla.addCell(cap);
                tabla.addCell(acier);
                tabla.addCell(desaci);
                tabla.addCell(not);
                tabla.addCell(dia);
                    for (Historial historial : this.ListaHistorialPersonas) {
                        tabla.addCell(historial.getCapitulo());
                        tabla.addCell(historial.getRespuesta_correcta() + "");
                        tabla.addCell(historial.getRespuesta_incorrecta() + "");
                        tabla.addCell(historial.getNota() + "");
                        tabla.addCell(this.fecha + "");
                    }
                documento.add(tabla);
                documento.add(new Paragraph("Fecha: "+fecha));
                documento.close();
        } catch (FileNotFoundException | DocumentException e) {
            System.err.print(e.getMessage());
        }
        
    }
}
