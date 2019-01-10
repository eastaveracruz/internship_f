package PC;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class DAO {

    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void add(PC pc){
        Session currentSession = this.sessionFactory.getCurrentSession();
        currentSession.persist(pc);
    }

    public void update(PC pc){
        Session currentSession = this.sessionFactory.getCurrentSession();
        currentSession.update(pc);
    }

    public void remove(int id){
        Session currentSession = this.sessionFactory.getCurrentSession();
        PC pc = (PC) currentSession.load(PC.class, new Integer(id));

        if(pc != null){
            currentSession.delete(pc);
        }
    }

    public PC getById(int id){
        Session currentSession = this.sessionFactory.getCurrentSession();
        PC pc = (PC) currentSession.load(PC.class, new Integer(id));

       return pc;
    }



    public List<PC> listPc(int page, String string){
        Session currentSession = this.sessionFactory.getCurrentSession();
        Query from_pc = currentSession.createQuery("from PC ORDER BY " + string);
//        from_pc.setParameter("string","%" + string + "%");
        from_pc.setFirstResult(page*10);
        from_pc.setMaxResults(10);
        List<PC> listPc = from_pc.list();
        System.out.println(string);
        return listPc;
    }

    public List<PC> list(){
        Session currentSession = this.sessionFactory.getCurrentSession();
        Query from_pc = currentSession.createQuery("from PC");
        List<PC> listPc = from_pc.list();
        return listPc;
    }

    public List<PC> searchList(String string){
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM PC WHERE NAME LIKE :string OR OPT LIKE :string");
        query.setParameter("string", "%" + string + "%");
        List<PC> bookList = query.list();
        return bookList;
    }
}
