/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.versvs.controller.command;

import com.br.versvs.model.dao.UserversvsDAO;
import com.br.versvs.model.entities.Userinfo;
import com.br.versvs.model.entities.Userversvs;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lucas
 */
public class UserversvsCommand implements Command {

    private UserversvsDAO userversvsDAO = lookupUserversvsDAOBean();

    private HttpServletRequest request;
    private HttpServletResponse response;
    private String responsePage;

    @Override
    public void init(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    @Override
    public void execute() {
        String action = request.getParameter("command").split("\\.")[1]; //pega a segunda posicao do input com valor command no register.jsp
        String username;
        String password;

        switch (action) {
            case "register":
                username = request.getParameter("username");
                password = request.getParameter("password");
                String password2 = request.getParameter("password2");
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String email = request.getParameter("email");

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Date birthday = new Date();
                 {
                    try {
                        birthday = sdf.parse(request.getParameter("birthday"));
                    } catch (ParseException ex) {
                        Logger.getLogger(UserversvsCommand.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }

                /*
           === VERIFICAÇÕES === 
                 */
                Userversvs tempUser1 = getUserversvsDAO().findByUsername(username); //para checar se o username ja existe
                Userversvs tempUser2 = getUserversvsDAO().findByEmail(email); //para checar se o email ja foi cadastrado

                if (tempUser1 != null) {
                    responsePage = "register.jsp";
                    request.getSession().setAttribute("error", "Nome de usuario ja foi cadastrado."); //nesse caso, usuario ja existe
                    break;
                } else if (tempUser2 != null) {
                    responsePage = "register.jsp";
                    request.getSession().setAttribute("error", "Email já cadastrado."); //nesse caso, email ja existe
                    break;
                } else if (!password.equals(password2)) {
                    responsePage = "register.jsp";
                    request.getSession().setAttribute("error", "Senhas digitadas não correspondem."); //nesse caso, senhas nao correspondem
                    break;
                } else {
                    //se nenhum error acima for encontrado, o usuario eh criado

                    Userversvs user = new Userversvs();
                    user.setUsername(username);
                    user.setPassword(password);

                    Userinfo userinfo = new Userinfo();
                    userinfo.setBirthday(birthday);
                    userinfo.setEmail(email);
                    userinfo.setFirstname(firstname);
                    userinfo.setLastname(lastname);

                    //ligando os usuarios criados, pois sao 1 para 1
                    userinfo.setUserversvs(user);
                    user.setUserinfo(userinfo);

                    getUserversvsDAO().insert(user);

                    responsePage = "index.jsp";
                }
                break; //break do case register

            case "login":
                username = request.getParameter("username");
                password = request.getParameter("password");

                Userversvs tempUser3 = getUserversvsDAO().findByUsername(username);
                if (tempUser3 == null) {
                    responsePage = "login.jsp"; //Primeiramente utilizando error.jsp
                    request.getSession().setAttribute("error", "ERRO! Usuario não existe.");
                    break;
                } else if (!password.equals(tempUser3.getPassword())) {
                    responsePage = "login.jsp";
                    request.getSession().setAttribute("error", "ERRO! Senha incorreta.");
                    break;
                } else {
                    request.getSession().setAttribute("user", tempUser3); //setando o usuario na sessão
                    request.getSession().setAttribute("count", 0);
                    request.getSession().setAttribute("error", null);
                    request.getSession().setAttribute("page", "home");
                    responsePage = "index.jsp";
                }
                break; //break do case login

            case "logout":

                request.getSession().setAttribute("user", null); //Limpa a sessao do usuario
                request.getSession().setAttribute("page", null);
                responsePage = "index.jsp";
                break;
                
            case "updatepass":
                //DONE senha da sessão = senha digitada e nova senha = nova senha 2
                
                String currentPassword = request.getParameter("currentpass"); //password atual digitado pelo usuario
                String currentPasswordSession = request.getParameter("currentpass2"); //password atual na sessão
                String newPassword = request.getParameter("newpass"); //nova senha 
                String newPassword2 = request.getParameter("confirmpass"); //confirmação da nova senha
                
                String currentUsername = request.getParameter("currentuser");
                
                if (currentPassword.equals(currentPasswordSession) && newPassword.equals(newPassword2)) {
                    Userversvs u = getUserversvsDAO().findByUsername(currentUsername); //procura o usuario pelo username
                    u.setPassword(newPassword);
                    getUserversvsDAO().modify(u);
                    //System.out.println(u.getPassword());
                    request.getSession().setAttribute("user", u); //seta o usuario modificado na sessão
                }
                responsePage = "setting.jsp";
                
                break;
            case "delete":
                //DONE deletar a conta do usuario do banco e limpar a sessão
                Long currentUserId = Long.parseLong(request.getParameter("currentuser"));
                Userversvs u = getUserversvsDAO().findById(currentUserId); //procura o usuario pelo username
                getUserversvsDAO().remove(u);
                System.out.println("Funcionou");
                request.getSession().setAttribute("user", null); //Limpa a sessao do usuario
                responsePage = "index.jsp";
                break;
                
            case "update":
                //TODO atualizar email... talvez usuario "it's not a bug, it's a feature"
                break;
                
            default:
                responsePage = "index.jsp";
                break;
        }
    }

    @Override
    public String getResponsePage() {
        return this.responsePage;
    }

    private UserversvsDAO lookupUserversvsDAOBean() {
        try {
            Context c = new InitialContext();
            return (UserversvsDAO) c.lookup("java:global/Versvs2/Versvs2-ejb/UserversvsDAO!com.br.versvs.model.dao.UserversvsDAO");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    /**
     * @return the userversvsDAO
     */
    public UserversvsDAO getUserversvsDAO() {
        return userversvsDAO;
    }

    /**
     * @param userversvsDAO the userversvsDAO to set
     */
    public void setUserversvsDAO(UserversvsDAO userversvsDAO) {
        this.userversvsDAO = userversvsDAO;
    }

}