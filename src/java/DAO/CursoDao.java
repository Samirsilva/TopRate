package DAO;  
import bean.Curso;
import javax.persistence.Entity;
import javax.persistence.EntityManager;


public class CursoDao {  
    
     public void salvar(Curso curso) {
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();

        try {
            em.getTransaction().begin();
            em.persist(curso);
            em.merge(curso);
            em.getTransaction().commit();

        } catch (Exception e) {

            em.getTransaction().rollback();
        }
    }

    public void delete(Curso curso) {
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();

        try {
            em.getTransaction().begin();
            em.remove(curso);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
        }
    }
    
    public Curso pesquisar(Long id){
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();
        
        Curso cu = em.find(Curso.class, id);
        return cu;
    }

}  