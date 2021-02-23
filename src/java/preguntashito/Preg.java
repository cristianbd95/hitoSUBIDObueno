
package preguntashito;


public class Preg {
    int idPregunta;
    String pregunta;
    String opcion1;
    String opcion2;
    String opcion3;
    String solucion;

    public Preg() {
    }

    public Preg(int idPregunta, String pregunta, String opcion1, String opcion2, String opcion3, String solucion) {
        this.idPregunta = idPregunta;
        this.pregunta = pregunta;
        this.opcion1 = opcion1;
        this.opcion2 = opcion2;
        this.opcion3 = opcion3;
        this.solucion = solucion;
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

    public String getOpcion1() {
        return opcion1;
    }

    public void setOpcion1(String opcion1) {
        this.opcion1 = opcion1;
    }

    public String getOpcion2() {
        return opcion2;
    }

    public void setOpcion2(String opcion2) {
        this.opcion2 = opcion2;
    }

    public String getOpcion3() {
        return opcion3;
    }

    public void setOpcion3(String opcion3) {
        this.opcion3 = opcion3;
    }

    public String getSolucion() {
        return solucion;
    }

    public void setSolucion(String solucion) {
        this.solucion = solucion;
    }

    @Override
    public String toString() {
        return "Preg{" + "idPregunta=" + idPregunta + ", pregunta=" + pregunta + ", opcion1=" + opcion1 + ", opcion2=" + opcion2 + ", opcion3=" + opcion3 + ", solucion=" + solucion + '}';
    }
    

    


    
    
}
