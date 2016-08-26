package base;


import entities.*;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

//working as DAO
public class EntityHandler {

    private static EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("persistForum");
    private static EntityManager entityManager = emfactory.createEntityManager();
    private static Query query = null;
    public  String bob="bobo";
    public static List getList(String entity) {
        if (entity == null || entity.length() < 1) {
            return null;
        }
        query = entityManager.createQuery("SELECT u FROM " + entity + " u");
        List list = query.getResultList();
        return list;
    }

    public static Object getItem(String entity, int id) {
        if (entity == null || entity.length() < 1) {
            return null;
        }
        Class c = null;
        try {
            c = Class.forName("entities." + entity);
        } catch (Exception e) {
            e.printStackTrace();
        }

        Object entityObject = entityManager.find(c, id);

        return entityObject;
    }

    
}
