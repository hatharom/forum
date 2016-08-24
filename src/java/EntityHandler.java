
import entities.Category;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author zolih
 */
public class EntityHandler {

    private static EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("persistForum");
    private static EntityManager entityManager = emfactory.createEntityManager();
    private static Query query = null;

    public static List getList(String entity) {
        query = entityManager.createQuery("SELECT u FROM " + entity + " u");
        List list = query.getResultList();
        return list;
    }
}
