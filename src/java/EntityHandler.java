
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

    public static List getList(String entity) {
        query = entityManager.createQuery("SELECT u FROM " + entity + " u");
        List list = query.getResultList();
        return list;
    }

    public static Object getItem(String entity, int id) {
        Class c = null;
        try {
            c = Class.forName("entities." + entity);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Object entityObject = null;

        entityObject = entityManager.find(c, id);

        return entityObject;
    }

}
