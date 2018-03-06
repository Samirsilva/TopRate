package DAO;  
import bean.Disciplina;
import javax.persistence.Entity;
import javax.persistence.EntityManager;


public class DisciplinaDao {  
  
    public void salvar(Disciplina disciplina) {
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();

        try {
            em.getTransaction().begin();
            em.persist(disciplina);
            em.merge(disciplina);
            em.getTransaction().commit();

        } catch (Exception e) {

            em.getTransaction().rollback();
        }
    }

    public void delete(Disciplina disciplina) {
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();

        try {
            em.getTransaction().begin();
            em.remove(disciplina);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
        }
    }
    
    public Disciplina pesquisar(Long id){
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();
        
        Disciplina di = em.find(Disciplina.class, id);
        return di;
    }
}  