/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;


/**
 *
 * @author M.Zaki Al Akkari <https://github.com/MrZakiakkari>
 */
public class AccountsDB
{
	
	public static Accounts getAccountsById(int id) {

        //get em
        EntityManager em = DBUtil.getEmf().createEntityManager();

        Accounts a = em.find(Accounts.class, id);

        em.close();

        return a;

    }//end getAuthorById
	public static List<Accounts> getAllAccounts() {
        EntityManager em = DBUtil.getEmf().createEntityManager();
        
        String q = "SELECT a from Accounts a";
        
        TypedQuery<Accounts> tq = em.createQuery(q, Accounts.class);
        //TypedQuery<Authors> tq = em.createNamedQuery("Authors.findAll", Authors.class);
        
        List<Accounts> list;
        
        try {
            list = tq.getResultList();
            
            if (list == null || list.isEmpty())
                list = null;
            
        }
        finally {
            em.close();
        }

        return list;
        
    }//end getAllAuthors

}
