package epsi.commandesmonitoring.repository;

import java.sql.Date;
import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import epsi.commandesmonitoring.model.Commande;
@Repository
public interface CommandeRepository extends JpaRepository<Commande, Long>{

	@Modifying
	@Transactional
	@Query(value = "update commande c set c.etat = ?, c.date_modification= ? where c.id BETWEEN ? AND ? ", 
	  nativeQuery = true)
	int updateEtat(Integer etat, Date date,Long min, Long max);
	
	@Query("SELECT c FROM Commande c WHERE c.etat = 0")
	Collection<Commande> selectCommandeDemande();

	@Query("SELECT c FROM Commande c WHERE c.etat =1")
	Collection<Commande> selectCommandeEnPrep();
	
	@Query("SELECT c FROM Commande c WHERE c.etat =2")
	Collection<Commande> selectCommandeFini();
	
	@Query("SELECT c FROM Commande c WHERE c.etat =3")
	Collection<Commande> selectCommandeHistorisee();
}
