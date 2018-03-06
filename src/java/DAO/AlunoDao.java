package DAO;  
import bean.Aluno;
import javax.persistence.Entity;
import javax.persistence.EntityManager;


public class AlunoDao {  
  
    public static int salvar(Aluno aluno) {
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();
        int r = 0;

        try {
            em.getTransaction().begin();
            em.persist(aluno);
            em.merge(aluno);
            em.getTransaction().commit();
            r=1;

        } catch (Exception e) {

            em.getTransaction().rollback();
            r=0;
        }
    return r;
    }

    public void delete(Aluno aluno) {
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();

        try {
            em.getTransaction().begin();
            em.remove(aluno);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
        }
    }
    
    public Aluno pesquisar(Long id){
        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();
        
        Aluno al = em.find(Aluno.class, id);
        return al;
    }
}  