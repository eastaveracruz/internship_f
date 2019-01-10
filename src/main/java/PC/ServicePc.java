package PC;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ServicePc {

    private DAO dao;

    public void setDao(DAO dao) {
        this.dao = dao;
    }

    @Transactional
    public List<PC> listPc(int page, String string){

        return dao.listPc(page, string);
    }
    @Transactional
    public List<PC> list(){

        return dao.list();
    }

    @Transactional
    public void remove(int id){
        this.dao.remove(id);
    }

    @Transactional
    public void add(PC pc){
        this.dao.add(pc);
    }

    @Transactional
    public void update(PC pc){
        this.dao.update(pc);
    }


    @Transactional
    public PC getById(int id) {
        return this.dao.getById(id);
    }


    @Transactional
    public List<PC> searchList(String string){
        return dao.searchList(string);
    }
}
