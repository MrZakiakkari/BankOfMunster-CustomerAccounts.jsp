/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author M.Zaki Al Akkari <https://github.com/MrZakiakkari>
 */
public class DBUtil {
    
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("BankOfMonster_PU");

    public static EntityManagerFactory getEmf() {
        return emf;
    }
    
}