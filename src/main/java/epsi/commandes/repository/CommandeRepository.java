package epsi.commandes.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import epsi.commandes.model.Commande;
@Repository
public interface CommandeRepository extends JpaRepository<Commande, Long>{

}
