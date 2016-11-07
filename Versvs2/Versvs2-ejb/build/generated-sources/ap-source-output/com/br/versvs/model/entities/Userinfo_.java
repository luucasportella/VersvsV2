package com.br.versvs.model.entities;

import com.br.versvs.model.entities.Userversvs;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-11-07T17:38:21")
@StaticMetamodel(Userinfo.class)
public class Userinfo_ { 

    public static volatile SingularAttribute<Userinfo, Date> birthday;
    public static volatile SingularAttribute<Userinfo, String> firstname;
    public static volatile SingularAttribute<Userinfo, Userversvs> userversvs;
    public static volatile SingularAttribute<Userinfo, Long> idUserinfo;
    public static volatile SingularAttribute<Userinfo, String> email;
    public static volatile SingularAttribute<Userinfo, String> lastname;

}