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
    , @NamedQuery(name = "Preguntas.findByPreguntaA", query = "SELECT p FROM Preguntas p WHERE p.preguntaA = :preguntaA")
    , @NamedQuery(name = "Preguntas.findByPreguntaB", query = "SELECT p FROM Preguntas p WHERE p.preguntaB = :preguntaB")
    , @NamedQuery(name = "Preguntas.findByPreguntaC", query = "SELECT p FROM Preguntas p WHERE p.preguntaC = :preguntaC")
    , @NamedQuery(name = "Preguntas.findBySolucion", query = "SELECT p FROM Preguntas p WHERE p.solucion = :solucion")})
public class Preguntas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idPregunta")
    private Integer idPregunta;
    @Basic(optional = false)
    @Column(name = "preguntaA")
    private String preguntaA;
    @Basic(optional = false)
    @Column(name = "preguntaB")
    private String preguntaB;
    @Basic(optional = false)
    @Column(name = "preguntaC")
    private String preguntaC;
    @Basic(optional = false)
    @Column(name = "solucion")
    private String solucion;

    public Preguntas() {
    }

    public Preguntas(Integer idPregunta) {
        this.idPregunta = idPregunta;
    }

    public Preguntas(Integer idPregunta, String preguntaA, String preguntaB, String preguntaC, String solucion) {
        this.idPregunta = idPregunta;
        this.preguntaA = preguntaA;
        this.preguntaB = preguntaB;
        this.preguntaC = preguntaC;
        this.solucion = solucion;
    }

    public Integer getIdPregunta() {
        return idPregunta;
    }

    public void setIdPregunta(Integer idPregunta) {
        this.idPregunta = idPregunta;
    }

    public String getPreguntaA() {
        return preguntaA;
    }

    public void setPreguntaA(String preguntaA) {
        this.preguntaA = preguntaA;
    }

    public String getPreguntaB() {
        return preguntaB;
    }

    public void setPreguntaB(String preguntaB) {
        this.preguntaB = preguntaB;
    }

    public String getPreguntaC() {
        return preguntaC;
    }

    public void setPreguntaC(String preguntaC) {
        this.preguntaC = preguntaC;
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
