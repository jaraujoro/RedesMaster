package model;

public class Pregunta {
    private int idPregunta;
    private String pregunta;
    private int numeroPregunta;
    private Capitulo capitulo;
    
    public Pregunta(Capitulo capitulo) {
        this.capitulo = capitulo;
    }

    public Pregunta(int idPregunta, String pregunta, int numeroPregunta) {
        this.idPregunta = idPregunta;
        this.pregunta = pregunta;
        this.numeroPregunta = numeroPregunta;
    }

    public Pregunta(int idPregunta, String pregunta, int numeroPregunta, Capitulo capitulo) {
        this.idPregunta = idPregunta;
        this.pregunta = pregunta;
        this.numeroPregunta = numeroPregunta;
        this.capitulo = capitulo;
    }

    public Capitulo getCapitulo() {
        return capitulo;
    }

    public void setCapitulo(Capitulo capitulo) {
        this.capitulo = capitulo;
    }

    public Pregunta() {
    }

    public Pregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public int getIdPregunta() {
        return idPregunta;
    }

    public void setIdPregunta(int idPregunta) {
        this.idPregunta = idPregunta;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public int getNumeroPregunta() {
        return numeroPregunta;
    }

    public void setNumeroPregunta(int numeroPregunta) {
        this.numeroPregunta = numeroPregunta;
    }

}
