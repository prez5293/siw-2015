package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.Query;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless(name="adFacade")
public class AdministratorFacade {

	@PersistenceContext(unitName="siw-2015")
	private EntityManager em;

	public Administrator retrieveAdmin(String email) {
		Administrator admin;
		Query query = em.createQuery("SELECT a FROM Administrator a WHERE a.email=:email");
		query.setParameter("email", email);
		if(query.getResultList().isEmpty()) return null;
		else{
			admin = (Administrator) query.getSingleResult();
			return admin;
		}
	}
	
}
