package DAO;  
import bean.Professor;
import javax.persistence.Entity;
import javax.persistence.EntityManager;


public class ProfessorDao {  
  
    public void salvar(Professor professor) {
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();

        try {
            em.getTransaction().begin();
            em.persist(professor);
            em.merge(professor);
            em.getTransaction().commit();

        } catch (Exception e) {

            em.getTransaction().rollback();
        }
    }

    public void delete(Professor professor) {
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();

        try {
            em.getTransaction().begin();
            em.remove(professor);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
        }
    }
    
    public Professor pesquisar(Long id){
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();
        
        Professor pro = em.find(Professor.class, id);
        return pro;
    }
}  