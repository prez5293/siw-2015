package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.Query;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

import java.util.List;

@Stateless(name="pFacade")
public class ProductFacade {

	@PersistenceContext(unitName = "siw-2015")
	private EntityManager em;

	public Product createProduct(String name, String code, Float price, String description, String pemail) {
		Product product = new Product(name, price, description, code);
		Provider provider = getProvider(pemail);
		if(provider != null){
			product.addProvider(provider);
			provider.addProduct(product);
			em.persist(product);
			return product;
		}else{
			return null;
		}

	}

	private Provider getProvider(String pemail) {
		Provider p;
		Query q = em.createQuery("SELECT p FROM Provider p WHERE p.email=:email");
		q.setParameter("email", pemail);
		if(q.getResultList().isEmpty())
			return null;
		else{
			p = (Provider) q.getSingleResult();
			return p;
		}
	}

	public Product retrieveProduct(String code) {
		Product p;
		Query q = em.createQuery("SELECT p FROM Product p WHERE p.code=:code");
		q.setParameter("code", code);
		if(q.getResultList().isEmpty())
			return null;
		else{
			p = (Product) q.getSingleResult();
			return p;
		}
	}
	
	public Product retrieveProduct(Long id) {
		Product p;
		Query q = em.createQuery("SELECT p FROM Product p WHERE p.id=:id");
		q.setParameter("id", id);
		if(q.getResultList().isEmpty())
			return null;
		else{
			p = (Product) q.getSingleResult();
			return p;
		}
	}

	public List<Product> getAllProducts() {
		CriteriaQuery<Product> cq = em.getCriteriaBuilder().createQuery(Product.class);
		cq.select(cq.from(Product.class));
		List<Product> products = em.createQuery(cq).getResultList();
		return products;
	}

	public void updateProduct(Product product) {
		em.merge(product);
	}

	private void deleteProduct(Product product) {
		em.remove(product);
	}

	public void deleteProduct(Long id) {
		Product product = em.find(Product.class, id);
		deleteProduct(product);
	}

}