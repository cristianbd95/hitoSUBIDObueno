/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package preguntashito;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author kk
 */
@Entity
@Table(name = "respuestas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Respuestas.findAll", query = "SELECT r FROM Respuestas r")
    , @NamedQuery(name = "Respuestas.findByIdRespuesta", query = "SELECT r FROM Respuestas r WHERE r.idRespuesta = :idRespuesta")
    , @NamedQuery(name = "Respuestas.findByIdAlumno", query = "SELECT r FROM Respuestas r WHERE r.idAlumno = :idAlumno")
    , @NamedQuery(name = "Respuestas.findByPregunta1", query = "SELECT r FROM Respuestas r WHERE r.pregunta1 = :pregunta1")
    , @NamedQuery(name = "Respuestas.findByRespuesta1", query = "SELECT r FROM Respuestas r WHERE r.respuesta1 = :respuesta1")
    , @NamedQuery(name = "Respuestas.findByPregunta2", query = "SELECT r FROM Respuestas r WHERE r.pregunta2 = :pregunta2")
    , @NamedQuery(name = "Respuestas.findByRespuesta2", query = "SELECT r FROM Respuestas r WHERE r.respuesta2 = :respuesta2")
    , @NamedQuery(name = "Respuestas.findByPregunta3", query = "SELECT r FROM Respuestas r WHERE r.pregunta3 = :pregunta3")
    , @NamedQuery(name = "Respuestas.findByRespuesta3", query = "SELECT r FROM Respuestas r WHERE r.respuesta3 = :respuesta3")
    , @NamedQuery(name = "Respuestas.findByPregunta4", query = "SELECT r FROM Respuestas r WHERE r.pregunta4 = :pregunta4")
    , @NamedQuery(name = "Respuestas.findByRespuesta4", query = "SELECT r FROM Respuestas r WHERE r.respuesta4 = :respuesta4")
    , @NamedQuery(name = "Respuestas.findByPregunta5", query = "SELECT r FROM Respuestas r WHERE r.pregunta5 = :pregunta5")
    , @NamedQuery(name = "Respuestas.findByRespuesta5", query = "SELECT r FROM Respuestas r WHERE r.respuesta5 = :respuesta5")
    , @NamedQuery(name = "Respuestas.findByFecha", query = "SELECT r FROM Respuestas r WHERE r.fecha = :fecha")
    , @NamedQuery(name = "Respuestas.findByHora", query = "SELECT r FROM Respuestas r WHERE r.hora = :hora")
    , @NamedQuery(name = "Respuestas.findByTiempo", query = "SELECT r FROM Respuestas r WHERE r.tiempo = :tiempo")
    , @NamedQuery(name = "Respuestas.findByNota", query = "SELECT r FROM Respuestas r WHERE r.nota = :nota")})
public class Respuestas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idRespuesta")
    private Integer idRespuesta;
    @Basic(optional = false)
    @Column(name = "idAlumno")
    private int idAlumno;
    @Basic(optional = false)
    @Column(name = "pregunta1")
    private String pregunta1;
    @Basic(optional = false)
    @Column(name = "respuesta1")
    private String respuesta1;
    @Basic(optional = false)
    @Column(name = "pregunta2")
    private String pregunta2;
    @Basic(optional = false)
    @Column(name = "respuesta2")
    private String respuesta2;
    @Basic(optional = false)
    @Column(name = "pregunta3")
    private String pregunta3;
    @Basic(optional = false)
    @Column(name = "respuesta3")
    private String respuesta3;
    @Basic(optional = false)
    @Column(name = "pregunta4")
    private String pregunta4;
    @Basic(optional = false)
    @Column(name = "respuesta4")
    private String respuesta4;
    @Basic(optional = false)
    @Column(name = "pregunta5")
    private String pregunta5;
    @Basic(optional = false)
    @Column(name = "respuesta5")
    private String respuesta5;
    @Basic(optional = false)
    @Column(name = "fecha")
    private String fecha;
    @Basic(optional = false)
    @Column(name = "hora")
    private String hora;
    @Basic(optional = false)
    @Column(name = "tiempo")
    private String tiempo;
    @Basic(optional = false)
    @Column(name = "nota")
    private String nota;

    public Respuestas() {
    }

    public Respuestas(Integer idRespuesta) {
        this.idRespuesta = idRespuesta;
    }

    public Respuestas(Integer idRespuesta, int idAlumno, String pregunta1, String respuesta1, String pregunta2, String respuesta2, String pregunta3, String respuesta3, String pregunta4, String respuesta4, String pregunta5, String respuesta5, String fecha, String hora, String tiempo, String nota) {
        this.idRespuesta = idRespuesta;
        this.idAlumno = idAlumno;
        this.pregunta1 = pregunta1;
        this.respuesta1 = respuesta1;
        this.pregunta2 = pregunta2;
        this.respuesta2 = respuesta2;
        this.pregunta3 = pregunta3;
        this.respuesta3 = respuesta3;
        this.pregunta4 = pregunta4;
        this.respuesta4 = respuesta4;
        this.pregunta5 = pregunta5;
        this.respuesta5 = respuesta5;
        this.fecha = fecha;
        this.hora = hora;
        this.tiempo = tiempo;
        this.nota = nota;
    }

    public Integer getIdRespuesta() {
        return idRespuesta;
    }

    public void setIdRespuesta(Integer idRespuesta) {
        this.idRespuesta = idRespuesta;
    }

    public int getIdAlumno() {
        return idAlumno;
    }

    public void setIdAlumno(int idAlumno) {
        this.idAlumno = idAlumno;
    }

    public String getPregunta1() {
        return pregunta1;
    }

    public void setPregunta1(String pregunta1) {
        this.pregunta1 = pregunta1;
    }

    public String getRespuesta1() {
        return respuesta1;
    }

    public void setRespuesta1(String respuesta1) {
        this.respuesta1 = respuesta1;
    }

    public String getPregunta2() {
        return pregunta2;
    }

    public void setPregunta2(String pregunta2) {
        this.pregunta2 = pregunta2;
    }

    public String getRespuesta2() {
        return respuesta2;
    }

    public void setRespuesta2(String respuesta2) {
        this.respuesta2 = respuesta2;
    }

    public String getPregunta3() {
        return pregunta3;
    }

    public void setPregunta3(String pregunta3) {
        this.pregunta3 = pregunta3;
    }

    public String getRespuesta3() {
        return respuesta3;
    }

    public void setRespuesta3(String respuesta3) {
        this.respuesta3 = respuesta3;
    }

    public String getPregunta4() {
        return pregunta4;
    }

    public void setPregunta4(String pregunta4) {
        this.pregunta4 = pregunta4;
    }

    public String getRespuesta4() {
        return respuesta4;
    }

    public void setRespuesta4(String respuesta4) {
        this.respuesta4 = respuesta4;
    }

    public String getPregunta5() {
        return pregunta5;
    }

    public void setPregunta5(String pregunta5) {
        this.pregunta5 = pregunta5;
    }

    public String getRespuesta5() {
        return respuesta5;
    }

    public void setRespuesta5(String respuesta5) {
        this.respuesta5 = respuesta5;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getTiempo() {
        return tiempo;
    }

    public void setTiempo(String tiempo) {
        this.tiempo = tiempo;
    }

    public String getNota() {
        return nota;
    }

    public void setNota(String nota) {
        this.nota = nota;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idRespuesta != null ? idRespuesta.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Respuestas)) {
            return false;
        }
        Respuestas other = (Respuestas) object;
        if ((this.idRespuesta == null && other.idRespuesta != null) || (this.idRespuesta != null && !this.idRespuesta.equals(other.idRespuesta))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "preguntashito.Respuestas[ idRespuesta=" + idRespuesta + " ]";
    }
    
}
