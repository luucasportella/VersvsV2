<%-- 
    Document   : setting
    Created on : 12/10/2016, 16:10:30
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Account Settings - VERSVS </title>

        <!--Import Google Icon Font -->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="materialize/css/materialize.css"  media="screen,projection"/>

        <!-- Versvs Style -->
        <link href="css_versvs/style_versvs.css" rel="stylesheet">

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="57x57" href="img/favicon/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="img/favicon/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="img/favicon/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="img/favicon/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="img/favicon/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="img/favicon/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
        <link rel="manifest" href="/manifest.json">
    </head>
    <body>

        <c:if test="${user==null}">     
            <c:redirect url="index.jsp"></c:redirect>
        </c:if>
        <!-- Header Start -->
        <header>
            <div class="navbar-fixed">
                <nav>
                    <div class="nav-wrapper">
                        <a href="index.jsp"><img src="img/logo_sem_escrito.png" alt=""/></a>
                        <a href="index.jsp" class="brand-logo">VERSVS</a>
                        <ul class="right hide-on-med-and-down">
                            <li><a href="index.jsp">Home</a></li>
                            <li>|</li>
                            <li><a href="Controller?command=Userversvs.logout">LOG OUT</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
        <!-- Header Ends -->

        <!-- Main -->
        <div class="container">

            <!-- Page Title -->
            <div class="row">
                <div class="col s10">
                    <h1>Account Settings</h1>
                    <hr>
                </div>
            </div>
            <!-- Page Title Ends-->

            <!-- Change Password -->
            <div class="row">
                <div class="col s6">
                    <h2>Change Password</h2>
                    <form action="Controller" method="POST">
                        <input type="hidden" name="command" value="Userversvs.updatepass" />
                        <input type="hidden" name="currentpass2" value="${user.password}"/>
                        <input type="hidden" name="currentuser" value="${user.username}"/>
                        <input type="password" name="currentpass" class="validate" placeholder="Current Password"/>
                        <input type="password" name="newpass" class="validate" placeholder="New Password"/>
                        <input type="password" name="confirmpass" class="validate" placeholder="Confirm Password"/>
                        <input type="submit" class="waves-effect waves-light btn" name="UpdatePassword" value="Update Password" />
                    </form>
                </div>
                <div class="col s1"></div>
                <!-- Delete Account -->
                    <div class="col s5">
                        <h2>Delete Account</h2>
                        <p>This operation can't be undone. Are you sure you want to delete your account?</p>
                        <form action="Controller" method="POST">
                            <input type="hidden" name="command" value="Userversvs.delete"/>
                            <input type="hidden" name="currentuser" value="${user.idUserversvs}"/>
                            <input class="delete waves-effect waves-light btn" type="submit" value="Delete Account"/>
                        </form>
                    </div>
                <!-- Delete Account Ends -->
            </div>
            <!-- Change Password Ends -->

            <!-- Change User Data -->
            <div class="row">
                <div class="col s10">
                    <h2>Change Your Information</h2>
                    <form action="Controller" method="POST">
                        <!-- Form Starts-->
                        <div class="row row_register">
                            <div class="input-field col s6">
                                <input type="hidden" name="currentuser" value="${user.idUserversvs}"/>
                                <input type="hidden" name="command" value="Userversvs.update" />
                                <input type="text" name="firstname" class="validate" id="firstname" disabled />
                                <label for="firstname">${user.userinfo.firstname}</label>
                            </div>
                            <div class="input-field col s6">
                                <input type="text" name="lastname" class="validate" id="lastname" disabled/>
                                <label for="lastname">${user.userinfo.lastname}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input type="text" name="username" class="validate" id="userversvs" disabled/>
                                <label for="userversvs">${user.username}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input type="email" name="email1" class="email validate" id="email1"/>
                                <label for="email1" data-error="wrong" data-success="right">Email</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input type="email" name="email1" class="email validate" id="email2" />
                                <label for="email2" data-error="wrong" data-success="right">Confirm Email</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <label for="birth">${user.userinfo.birthday}</label>
                                <input type="text" id="birth" name="birthday" disabled />
                            </div>
                        </div>
                        <input type="submit" class="waves-effect waves-light btn" name="Update" value="Update" />
                    </form>
                </div>
            </div>
            <!-- Change User Data Ends -->
        </div>
        <!-- Main Ends -->    

        <!-- jQuery Materialize -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
    </body>
</html>
