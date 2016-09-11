/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.versvs.model.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Lucas
 */
@Entity
@Table(name = "USERVERSVS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Userversvs.findAll", query = "SELECT u FROM Userversvs u"),
    @NamedQuery(name = "Userversvs.findByIdUserversvs", query = "SELECT u FROM Userversvs u WHERE u.idUserversvs = :idUserversvs"),
    @NamedQuery(name = "Userversvs.findByUsername", query = "SELECT u FROM Userversvs u WHERE u.username = :username"),
    @NamedQuery(name = "Userversvs.findByPassword", query = "SELECT u FROM Userversvs u WHERE u.password = :password")})
public class Userversvs implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID_USERVERSVS")
    private Long idUserversvs;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "USERNAME")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 32)
    @Column(name = "PASSWORD")
    private String password;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "userversvs")
    private Userinfo userinfo;

    public Userversvs() {
    }

    public Userversvs(Long idUserversvs) {
        this.idUserversvs = idUserversvs;
    }

    public Userversvs(Long idUserversvs, String username, String password) {
        this.idUserversvs = idUserversvs;
        this.username = username;
        this.password = password;
    }

    public Long getIdUserversvs() {
        return idUserversvs;
    }

    public void setIdUserversvs(Long idUserversvs) {
        this.idUserversvs = idUserversvs;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Userinfo getUserinfo() {
        return userinfo;
    }

    public void setUserinfo(Userinfo userinfo) {
        this.userinfo = userinfo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idUserversvs != null ? idUserversvs.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Userversvs)) {
            return false;
        }
        Userversvs other = (Userversvs) object;
        if ((this.idUserversvs == null && other.idUserversvs != null) || (this.idUserversvs != null && !this.idUserversvs.equals(other.idUserversvs))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.br.versvs.model.entities.Userversvs[ idUserversvs=" + idUserversvs + " ]";
    }
    
}
