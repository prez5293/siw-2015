package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

import java.util.List;

@Stateless(name="pvFacade")
public class ProviderFacade {
	
    @PersistenceContext(unitName = "siw-2015")
    private EntityManager em;
    
	public Provider createProvider(String iva, String phoneNumber, String email, String vatin, Address address) {
		Provider provider = new Provider(iva, phoneNumber, email, vatin, address);
		em.persist(provider);
		return provider;
	}
	
    public Provider retrieveProvider(Long id) {
        Provider provider = em.find(Provider.class, id);
        return provider;
    }
	
	public List<Provider> getAllProviders() {
        CriteriaQuery<Provider> cq = em.getCriteriaBuilder().createQuery(Provider.class);
        cq.select(cq.from(Provider.class));
        List<Provider> providers = em.createQuery(cq).getResultList();
		return providers;
	}

	public void updateProvider(Provider provider) {
        em.merge(provider);
	}
	
    private void deleteProvider(Provider provider) {
        em.remove(provider);
    }

	public void deleteProvider(Long id) {
        Provider provider = em.find(Provider.class, id);
        deleteProvider(provider);
	}
}