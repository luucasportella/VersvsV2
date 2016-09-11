/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.versvs.model.dao;

import com.br.versvs.model.entities.Userinfo;
import com.br.versvs.model.entities.Userversvs;
import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

/**
 *
 * @author Lucas
 */
@LocalBean
@Stateful
public class UserversvsDAO implements GenericDAO<Userversvs>{
    
    @PersistenceContext(unitName = "Versvs2-ejbPU", type = PersistenceContextType.TRANSACTION)
    private EntityManager em;

    @Override
    public void insert(Userversvs e) {
        em.persist(e);
    }

    @Override
    public List<Userversvs> findAll() {
        Query query = em.createNamedQuery("Userinfo.findAll");
        return query.getResultList();
    }

    @Override
    public Userversvs findById(long id) {
        return em.find(Userversvs.class, id);
    }
    
    public Userversvs findByUsername(String username) {
        Query query = em.createNamedQuery("Userversvs.findByUsername").setParameter("username", username);
        Object obj = null;
        try {
            obj = query.getSingleResult();
            return (Userversvs) obj;
        } catch (NoResultException ex) {
            return null;
        }
    }

    public Userversvs findByEmail(String email) {
        Query query = em.createNamedQuery("Userinfo.findByEmail").setParameter("email", email);
        Object obj = null;
        try {
            obj = query.getSingleResult();
            return ((Userinfo) obj).getUserversvs();
        } catch (NoResultException ex) {
            return null;
        }
    }
  
    @Override
    public void modify(Userversvs e) {
        em.merge(e);
    }

    @Override
    public void remove(Userversvs e) {
        em.merge(e);
        em.remove(e);
    }
    
}