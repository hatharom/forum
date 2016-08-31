package base;

import entities.*;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

//acting as DAO
public class EntityHandler {

    public static List getList(String entity) {

        if (entity == null || entity.length() < 1) {
            return null;
        }
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("persistForum");
        EntityManager entityManager = emfactory.createEntityManager();
        Query query = null;
        query = entityManager.createQuery("SELECT u FROM " + entity + " u");
        List list = query.getResultList();
        return list;
    }

    public static List getFilteredList(String entity, int conditionId) {

        if (entity == null || entity.length() < 1) {
            return null;
        }
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("persistForum");
        EntityManager entityManager = emfactory.createEntityManager();
        Query query = null;
        List list = null;
        if (entity.equalsIgnoreCase("topic")) {
            query = entityManager.createQuery("SELECT u FROM " + entity + " u WHERE u.C_ID =" + conditionId + " ");
            list = query.getResultList();
        } else if (entity.equalsIgnoreCase("post")) {
            query = entityManager.createQuery("SELECT u FROM " + entity + " u WHERE u.T_ID = " + conditionId + "");
            list = query.getResultList();
        }

        return list;
    }

    public static Object getItem(String entity, int id) {
        if (entity == null || entity.length() < 1) {
            return null;
        }
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("persistForum");
        EntityManager entityManager = emfactory.createEntityManager();
        Query query = null;
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
