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
@Table(name = "preguntas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Preguntas.findAll", query = "SELECT p FROM Preguntas p")
    , @NamedQuery(name = "Preguntas.findByIdPregunta", query = "SELECT p FROM Preguntas p WHERE p.idPregunta = :idPregunta")
    , @NamedQuery(name = "Preguntas.findByPregunta", query = "SELECT p FROM Preguntas p WHERE p.pregunta = :pregunta")
    , @NamedQuery(name = "Preguntas.findByOpcion1", query = "SELECT p FROM Preguntas p WHERE p.opcion1 = :opcion1")
    , @NamedQuery(name = "Preguntas.findByOpcion2", query = "SELECT p FROM Preguntas p WHERE p.opcion2 = :opcion2")
    , @NamedQuery(name = "Preguntas.findByOpcion3", query = "SELECT p FROM Preguntas p WHERE p.opcion3 = :opcion3")
    , @NamedQuery(name = "Preguntas.findBySolucion", query = "SELECT p FROM Preguntas p WHERE p.solucion = :solucion")})
public class Preguntas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idPregunta")
    private Integer idPregunta;
    @Basic(optional = false)
    @Column(name = "pregunta")
    private String pregunta;
    @Basic(optional = false)
    @Column(name = "opcion1")
    private String opcion1;
    @Basic(optional = false)
    @Column(name = "opcion2")
    private String opcion2;
    @Basic(optional = false)
    @Column(name = "opcion3")
    private String opcion3;
    @Basic(optional = false)
    @Column(name = "solucion")
    private String solucion;

    public Preguntas() {
    }

    public Preguntas(Integer idPregunta) {
        this.idPregunta = idPregunta;
    }

    public Preguntas(Integer idPregunta, String pregunta, String opcion1, String opcion2, String opcion3, String solucion) {
        this.idPregunta = idPregunta;
        this.pregunta = pregunta;
        this.opcion1 = opcion1;
        this.opcion2 = opcion2;
        this.opcion3 = opcion3;
        this.solucion = solucion;
    }

    public Integer getIdPregunta() {
        return idPregunta;
    }

    public void setIdPregunta(Integer idPregunta) {
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
    public int hashCode() {
        int hash = 0;
        hash += (idPregunta != null ? idPregunta.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Preguntas)) {
            return false;
        }
        Preguntas other = (Preguntas) object;
        if ((this.idPregunta == null && other.idPregunta != null) || (this.idPregunta != null && !this.idPregunta.equals(other.idPregunta))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "preguntashito.Preguntas[ idPregunta=" + idPregunta + " ]";
    }
    
}
