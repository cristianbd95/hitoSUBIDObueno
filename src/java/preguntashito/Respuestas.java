/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package preguntashito;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
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
    , @NamedQuery(name = "Respuestas.findByNota", query = "SELECT r FROM Respuestas r WHERE r.nota = :nota")
    , @NamedQuery(name = "Respuestas.findByFecha", query = "SELECT r FROM Respuestas r WHERE r.fecha = :fecha")
    , @NamedQuery(name = "Respuestas.findByHora", query = "SELECT r FROM Respuestas r WHERE r.hora = :hora")
    , @NamedQuery(name = "Respuestas.findByTiempo", query = "SELECT r FROM Respuestas r WHERE r.tiempo = :tiempo")})
public class Respuestas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idRespuesta")
    private Integer idRespuesta;
    @Basic(optional = false)
    @Column(name = "idAlumno")
    private int idAlumno;
    @Basic(optional = false)
    @Column(name = "nota")
    private float nota;
    @Basic(optional = false)
    @Column(name = "fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @Basic(optional = false)
    @Column(name = "hora")
    private String hora;
    @Basic(optional = false)
    @Column(name = "tiempo")
    private String tiempo;

    public Respuestas() {
    }

    public Respuestas(Integer idRespuesta) {
        this.idRespuesta = idRespuesta;
    }

    public Respuestas(Integer idRespuesta, int idAlumno, float nota, Date fecha, String hora, String tiempo) {
        this.idRespuesta = idRespuesta;
        this.idAlumno = idAlumno;
        this.nota = nota;
        this.fecha = fecha;
        this.hora = hora;
        this.tiempo = tiempo;
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

    public float getNota() {
        return nota;
    }

    public void setNota(float nota) {
        this.nota = nota;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
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
