/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author luigi
 */
@Entity
@Table(name = "ticket")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ticket.findAll", query = "SELECT t FROM Ticket t"),
    @NamedQuery(name = "Ticket.findByIdTicket", query = "SELECT t FROM Ticket t WHERE t.idTicket = :idTicket"),
    @NamedQuery(name = "Ticket.findByFechsoliTicket", query = "SELECT t FROM Ticket t WHERE t.fechsoliTicket = :fechsoliTicket"),
    @NamedQuery(name = "Ticket.findByEstadoSoliTicket", query = "SELECT t FROM Ticket t WHERE t.estadoSoliTicket = :estadoSoliTicket"),
    @NamedQuery(name = "Ticket.findByFeciniTicket", query = "SELECT t FROM Ticket t WHERE t.feciniTicket = :feciniTicket"),
    @NamedQuery(name = "Ticket.findByFecfinTicket", query = "SELECT t FROM Ticket t WHERE t.fecfinTicket = :fecfinTicket"),
    @NamedQuery(name = "Ticket.findByDetalleTicket", query = "SELECT t FROM Ticket t WHERE t.detalleTicket = :detalleTicket"),
    @NamedQuery(name = "Ticket.findByObserTicket", query = "SELECT t FROM Ticket t WHERE t.obserTicket = :obserTicket"),
    @NamedQuery(name = "Ticket.findByEstadoTicket", query = "SELECT t FROM Ticket t WHERE t.estadoTicket = :estadoTicket")})
public class Ticket implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID_TICKET")
    private Integer idTicket;
    @Basic(optional = false)
    @NotNull
    @Column(name = "FECHSOLI_TICKET")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechsoliTicket;
    @Size(max = 20)
    @Column(name = "ESTADO_SOLI_TICKET")
    private String estadoSoliTicket;
    @Column(name = "FECINI_TICKET")
    @Temporal(TemporalType.TIMESTAMP)
    private Date feciniTicket;
    @Column(name = "FECFIN_TICKET")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecfinTicket;
    @Size(max = 254)
    @Column(name = "DETALLE_TICKET")
    private String detalleTicket;
    @Size(max = 100)
    @Column(name = "OBSER_TICKET")
    private String obserTicket;
    @Size(max = 20)
    @Column(name = "ESTADO_TICKET")
    private String estadoTicket;
    @JoinColumn(name = "ID_DPTO", referencedColumnName = "ID_DPTO")
    @ManyToOne
    private Departamento idDpto;
    @JoinColumn(name = "ID_EMPL", referencedColumnName = "ID_EMPL")
    @ManyToOne
    private Empleado idEmpl;
    @JoinColumn(name = "EMP_ID_EMPL", referencedColumnName = "ID_EMPL")
    @ManyToOne
    private Empleado empIdEmpl;
    @JoinColumn(name = "ID_PRIORIDAD", referencedColumnName = "ID_PRIORIDAD")
    @ManyToOne
    private Prioridad idPrioridad;

    public Ticket() {
    }

    public Ticket(Integer idTicket) {
        this.idTicket = idTicket;
    }

    public Ticket(Integer idTicket, Date fechsoliTicket) {
        this.idTicket = idTicket;
        this.fechsoliTicket = fechsoliTicket;
    }

    public Integer getIdTicket() {
        return idTicket;
    }

    public void setIdTicket(Integer idTicket) {
        this.idTicket = idTicket;
    }

    public Date getFechsoliTicket() {
        return fechsoliTicket;
    }

    public void setFechsoliTicket(Date fechsoliTicket) {
        this.fechsoliTicket = fechsoliTicket;
    }

    public String getEstadoSoliTicket() {
        return estadoSoliTicket;
    }

    public void setEstadoSoliTicket(String estadoSoliTicket) {
        this.estadoSoliTicket = estadoSoliTicket;
    }

    public Date getFeciniTicket() {
        return feciniTicket;
    }

    public void setFeciniTicket(Date feciniTicket) {
        this.feciniTicket = feciniTicket;
    }

    public Date getFecfinTicket() {
        return fecfinTicket;
    }

    public void setFecfinTicket(Date fecfinTicket) {
        this.fecfinTicket = fecfinTicket;
    }

    public String getDetalleTicket() {
        return detalleTicket;
    }

    public void setDetalleTicket(String detalleTicket) {
        this.detalleTicket = detalleTicket;
    }

    public String getObserTicket() {
        return obserTicket;
    }

    public void setObserTicket(String obserTicket) {
        this.obserTicket = obserTicket;
    }

    public String getEstadoTicket() {
        return estadoTicket;
    }

    public void setEstadoTicket(String estadoTicket) {
        this.estadoTicket = estadoTicket;
    }

    public Departamento getIdDpto() {
        return idDpto;
    }

    public void setIdDpto(Departamento idDpto) {
        this.idDpto = idDpto;
    }

    public Empleado getIdEmpl() {
        return idEmpl;
    }

    public void setIdEmpl(Empleado idEmpl) {
        this.idEmpl = idEmpl;
    }

    public Empleado getEmpIdEmpl() {
        return empIdEmpl;
    }

    public void setEmpIdEmpl(Empleado empIdEmpl) {
        this.empIdEmpl = empIdEmpl;
    }

    public Prioridad getIdPrioridad() {
        return idPrioridad;
    }

    public void setIdPrioridad(Prioridad idPrioridad) {
        this.idPrioridad = idPrioridad;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTicket != null ? idTicket.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ticket)) {
            return false;
        }
        Ticket other = (Ticket) object;
        if ((this.idTicket == null && other.idTicket != null) || (this.idTicket != null && !this.idTicket.equals(other.idTicket))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Ticket[ idTicket=" + idTicket + " ]";
    }
    
}
