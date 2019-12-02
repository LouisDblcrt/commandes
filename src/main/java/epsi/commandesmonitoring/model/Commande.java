package epsi.commandesmonitoring.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="commande")
public class Commande {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@NotNull
	private Long id_magasin;
	
	@NotNull
	@Enumerated(EnumType.ORDINAL)
	private Etat etat;
	
	@NotNull
	private Date date_creation;
	
	@NotNull
	private Date date_modification;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getId_magasin() {
		return id_magasin;
	}

	public void setId_magasin(Long id_magasin) {
		this.id_magasin = id_magasin;
	}

	
	public Etat getEtat() {
		return etat;
	}

	public void setEtat(Etat etat) {
		this.etat = etat;
	}

	public Date getDate_creation() {
		return date_creation;
	}

	public void setDate_creation(Date date_creation) {
		this.date_creation = date_creation;
	}

	public Date getDate_modification() {
		return date_modification;
	}

	public void setDate_modification(Date date_modification) {
		this.date_modification = date_modification;
	}
	
	@Override
	public String toString() {
		return "Commande [id=" + id + ", id_magasin=" + id_magasin + ", etat=" + etat + ", date_creation="
				+ date_creation + ", date_modification=" + date_modification + "]";
	}
	
	
}
