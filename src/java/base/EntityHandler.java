package base;

import entities.*;
import java.util.Date;
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
        Class c = null;
        try {
            c = Class.forName("entities." + entity);
        } catch (Exception e) {
            e.printStackTrace();
        }

        Object entityObject = entityManager.find(c, id);

        return entityObject;
    }

    public static void setPost(String content, int T_ID, int U_ID, Date date) {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("persistForum");
        EntityManager entityManager = emfactory.createEntityManager();
        entityManager.getTransaction().begin();
        Post post = new Post();
        post.setContent(content);
        post.setT_ID(T_ID);
        post.setU_ID(U_ID);
        post.setDate(date);
        entityManager.persist(post);
        entityManager.getTransaction().commit();
        entityManager.close();
        emfactory.close();
    }

     public static void setTopic(String name, int C_ID) {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("persistForum");
        EntityManager entityManager = emfactory.createEntityManager();
        entityManager.getTransaction().begin();
        Topic topic = new Topic();
        topic.setName(name);
        topic.setC_ID(C_ID);
        entityManager.persist(topic);
        entityManager.getTransaction().commit();
        entityManager.close();
        emfactory.close();
    }
    
    
    static int getId(String entity, String column, String name) {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("persistForum");
        EntityManager entityManager = emfactory.createEntityManager();
        Query query = entityManager.createQuery("Select u FROM " + entity + " u WHERE u." + column + " like '" + name+"'");
        Object result = query.getSingleResult();
        User u = (User) result;//need to change for generic
        return u.getU_ID();
    }

}
